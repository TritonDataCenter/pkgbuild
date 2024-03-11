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
.if ${PKGPATH:Mwww/webkit-gtk*} || ${PKGPATH:Mwww/webkit24-gtk*}
CFLAGS:=	${CFLAGS:C/^-g.*//}
.endif

#
# Packages which need to remove -msave-args, usually because at some point
# during the build they legitimately use -m32 for multiarch libraries, which
# is incompatible with -msave-args.
#
.if ${PKGPATH:Mextra/gcc*} \
 || ${PKGPATH:Mjoyent/gcc*} \
 || ${PKGPATH:Mlang/compiler-rt} \
 || ${PKGPATH:Mlang/gcc*} \
 || ${PKGPATH:Msysutils/arm-trusted-firmware*}
CFLAGS:=	${CFLAGS:N-msave-args}
.endif

#
# Packages that use clang, where we must remove GCC-only arguments.
#
# Unfortunately we can't test PKGSRC_COMPILER here because it isn't set at this
# point, so this is a hardcoded list for now.
#
.if ${PKGPATH:Mdevel/ccls} \
 || ${PKGPATH:Mdevel/gnustep-*} \
 || ${PKGPATH:Mdevel/objfw} \
 || ${PKGPATH:Mlang/wasi-*}
CFLAGS:=	${CFLAGS:N-msave-args}
CFLAGS:=	${CFLAGS:N-fno-aggressive-loop-optimizations}
.endif

#
# Generate checksums that work across all branches, avoiding BLAKE2s which is
# not supported by pkgtools/digest in 2020Q4 and earlier.  This can eventually
# be removed.
#
.if ${PKGPATH:Mjoyent/*}
_DIGEST_ALGORITHMS=	RMD160 SHA512
.endif
