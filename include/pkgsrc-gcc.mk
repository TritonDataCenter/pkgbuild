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

GCC_REQD+=	${PKGBUILD_GCC_REQD}

USE_PKGSRC_GCC=	yes
.endif
