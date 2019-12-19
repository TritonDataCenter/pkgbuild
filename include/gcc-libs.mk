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
.if !empty(PKGPATH:Marchivers/bsdtar) \
 || !empty(PKGPATH:Marchivers/pax) \
 || !empty(PKGPATH:Mdevel/binutils) \
 || !empty(PKGPATH:Mdevel/gmake) \
 || !empty(PKGPATH:Mdevel/nbpatch) \
 || !empty(PKGPATH:Mjoyent/ctftools) \
 || !empty(PKGPATH:Mlang/gcc*) \
 || !empty(PKGPATH:Mmisc/root) \
 || !empty(PKGPATH:Mpkgtools/abiexec) \
 || !empty(PKGPATH:Mpkgtools/cwrappers) \
 || !empty(PKGPATH:Mpkgtools/digest) \
 || !empty(PKGPATH:Mpkgtools/isaexec) \
 || !empty(PKGPATH:Mpkgtools/pkg_install) \
 || !empty(PKGPATH:Mpkgtools/pkg_install-info) \
 || !empty(PKGPATH:Msysutils/checkperms)
PKGSRC_USE_SSP=	no
.else
_USE_GCC_SHLIB=	yes
.endif
