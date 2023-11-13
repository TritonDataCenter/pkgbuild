#
# Handling for gcc-libs.  In order to enable PKGSRC_USE_SSP we need to ensure
# that all packages pull in gcc-libs for libssp via the _USE_GCC_SHLIB=yes
# mechanism, however we cannot do this for all packages as those which are
# dependencies for gcc-libs will cause circular dependencies.
#
# For those packages, listed below, we have no choice but to disable the use of
# PKGSRC_USE_SSP and ensure they do not link against gcc-libs.
#
# This also aids packages which do not yet have USE_GCC_RUNTIME set.
#
.if ${PKGPATH:Marchivers/bsdtar} \
 || ${PKGPATH:Marchivers/pax} \
 || ${PKGPATH:Mdevel/binutils} \
 || ${PKGPATH:Mdevel/gmake} \
 || ${PKGPATH:Mdevel/nbpatch} \
 || ${PKGPATH:Mextra/gcc*} \
 || ${PKGPATH:Mjoyent/ctftools} \
 || ${PKGPATH:Mjoyent/gcc*} \
 || ${PKGPATH:Mlang/gcc*} \
 || ${PKGPATH:Mpkgtools/abiexec} \
 || ${PKGPATH:Mpkgtools/cwrappers} \
 || ${PKGPATH:Mpkgtools/digest} \
 || ${PKGPATH:Mpkgtools/isaexec} \
 || ${PKGPATH:Mpkgtools/mktools} \
 || ${PKGPATH:Mpkgtools/pkg_install} \
 || ${PKGPATH:Mpkgtools/pkg_install-info} \
 || ${PKGPATH:Msysutils/checkperms}
PKGSRC_USE_SSP=	no
.else
_USE_GCC_SHLIB=	yes
.endif
