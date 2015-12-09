#
# This file sets _USE_GCC_SHLIB for packages which are not in the bootstrap
# path for GCC itself.  The pkgsrc mechanism for this (setting it if using
# C++/USE_LIBTOOL/USE_GCC_RUNTIME) unfortunately leaves many hundreds of
# packages requiring manual USE_GCC_RUNTIME additions.  This way is much
# simpler, even if it adds a gcc-libs dependency where it may not be required.
#
.if empty(PKGPATH:Marchivers/pax) \
 && empty(PKGPATH:Mdevel/binutils) \
 && empty(PKGPATH:Mdevel/gmake) \
 && empty(PKGPATH:Mdevel/nbpatch) \
 && empty(PKGPATH:Mlang/gcc*) \
 && empty(PKGPATH:Mmisc/root) \
 && empty(PKGPATH:Mpkgtools/abiexec) \
 && empty(PKGPATH:Mpkgtools/cwrappers) \
 && empty(PKGPATH:Mpkgtools/digest) \
 && empty(PKGPATH:Mpkgtools/isaexec) \
 && empty(PKGPATH:Mpkgtools/pkg_install) \
 && empty(PKGPATH:Mpkgtools/pkg_install-info) \
 && empty(PKGPATH:Msysutils/checkperms)
_USE_GCC_SHLIB=	yes
.endif
