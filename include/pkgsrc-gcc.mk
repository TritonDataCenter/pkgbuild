#
# Makefile fragment for using GCC from pkgsrc.  This fragment requires that
# PKGBUILD_GCCBASE and PKGBUILD_GCC_REQD have been set prior to include.
#

#
# Use external GCC for GCC itself and its dependencies, otherwise we run into
# circular dependencies.
#
.if ${PKGPATH:Marchivers/bsdtar} \
 || ${PKGPATH:Mdevel/binutils} \
 || ${PKGPATH:Mdevel/gmake} \
 || ${PKGPATH:Mdevel/nbpatch} \
 || ${PKGPATH:Mextra/gcc[0-9]} \
 || ${PKGPATH:Mextra/gcc[0-9][0-9]} \
 || ${PKGPATH:Mjoyent/ctftools} \
 || ${PKGPATH:Mjoyent/gcc[0-9]} \
 || ${PKGPATH:Mjoyent/gcc[0-9][0-9]} \
 || ${PKGPATH:Mlang/gcc[0-9]} \
 || ${PKGPATH:Mlang/gcc[0-9][0-9]} \
 || ${PKGPATH:Mlang/gcc3*} \
 || ${PKGPATH:Mpkgtools/abiexec} \
 || ${PKGPATH:Mpkgtools/cwrappers} \
 || ${PKGPATH:Mpkgtools/digest} \
 || ${PKGPATH:Mpkgtools/isaexec} \
 || ${PKGPATH:Mpkgtools/mktools} \
 || ${PKGPATH:Mpkgtools/pkg_install-info} \
 || ${PKGPATH:Msysutils/checkperms}
GCCBASE=	${PKGBUILD_GCCBASE}
.else
#
# This should have been += all along to avoid issues where we overwrite a newer
# requirement, but we can't change releases now that didn't use it to begin
# with, otherwise dependencies will change.
#
.  if ${PKGBUILD:M201[4567]Q?-*}
GCC_REQD=	${PKGBUILD_GCC_REQD}
.  else
GCC_REQD+=	${PKGBUILD_GCC_REQD}
.  endif
USE_PKGSRC_GCC=	yes
.endif
