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

#
# Packages which need to remove -msave-args, usually because at some point
# during the build they legitimately use -m32 for multiarch libraries, which
# is incompatible with -msave-args.
#
.if !empty(PKGPATH:Mjoyent/gcc*) \
 || !empty(PKGPATH:Mlang/compiler-rt) \
 || !empty(PKGPATH:Mlang/gcc*) \
 || !empty(PKGPATH:Msysutils/arm-trusted-firmware*)
CFLAGS:=	${CFLAGS:N-msave-args}
.endif
