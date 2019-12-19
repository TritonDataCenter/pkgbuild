#
# Makefile fragment for using GCC from pkgsrc.  This fragment requires that
# PKGBUILD_GCCBASE and PKGBUILD_GCC_REQD have been set prior to include.
#

#
# Use external GCC for GCC itself and its dependencies, otherwise we run into
# circular dependencies.
#
.if !empty(PKGPATH:Marchivers/bsdtar) \
 || !empty(PKGPATH:Mdevel/binutils) \
 || !empty(PKGPATH:Mdevel/gmake) \
 || !empty(PKGPATH:Mdevel/nbpatch) \
 || !empty(PKGPATH:Mjoyent/ctftools) \
 || !empty(PKGPATH:Mlang/gcc2) \
 || !empty(PKGPATH:Mlang/gcc3*) \
 || !empty(PKGPATH:Mlang/gcc4?) \
 || !empty(PKGPATH:Mlang/gcc[5-9]) \
 || !empty(PKGPATH:Mmisc/root) \
 || !empty(PKGPATH:Mpkgtools/abiexec) \
 || !empty(PKGPATH:Mpkgtools/cwrappers) \
 || !empty(PKGPATH:Mpkgtools/digest) \
 || !empty(PKGPATH:Mpkgtools/isaexec) \
 || !empty(PKGPATH:Mpkgtools/pkg_install-info) \
 || !empty(PKGPATH:Msysutils/checkperms)
GCCBASE=	${PKGBUILD_GCCBASE}
.else
#
# This should have been += all along to avoid issues where we overwrite a newer
# requirement, but we can't change releases now that didn't use it to begin
# with, otherwise dependencies will change.
#
.  if !empty(PKGBUILD:M201[4567]Q?-*)
GCC_REQD=	${PKGBUILD_GCC_REQD}
.  else
GCC_REQD+=	${PKGBUILD_GCC_REQD}
.  endif
USE_PKGSRC_GCC=	yes
.endif
