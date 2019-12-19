#
# Hacks for which there is currently no better place.  Eventually this file
# should be empty and removed as things get fixed properly.
#

#
# When enabling -gdwarf-2 we hit GNU ar limits on file size, resulting in:
#
#   ar: .libs/libwebkitgtk-1.0.a: File truncated
#
# For now, remove -g* for those packages to keep the file size down.
#
.if !empty(PKGPATH:Mwww/webkit-gtk*) || !empty(PKGPATH:Mwww/webkit24-gtk*)
CFLAGS:=	${CFLAGS:C/^-g.*//}
.endif

.if !empty(PKGPATH:Mlang/gcc*) \
 || !empty(PKGPATH:Msysutils/arm-trusted-firmware*)
CFLAGS:=	${CFLAGS:C/^-m.*//}
.endif
