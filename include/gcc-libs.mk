#
# Handling for GCC runtime libraries.
#
# In general this file ensures that packages in the GCC bootstrap path do not
# use any GCC runtime libraries, thus avoiding circular dependencies.
#

#
# Temporary _USE_GCC_SHLIB exclusions, see below for more details.  The aim
# here is to remove the dependency for any package that might be part of the
# bootstrap kit, where possible, with the hope that this will avoid having to
# ship the gcc-libs package at all.
#
.if ${BRANCH:Mtrunk*} || ${BRANCH:M202[3-9]*}
SKIP_GCC_SHLIB.devel/bmake=
SKIP_GCC_SHLIB.extra/pkgsrc-gnupg-keys=
SKIP_GCC_SHLIB.pkgtools/bootstrap-mk-files=
SKIP_GCC_SHLIB.pkgtools/pkg_alternatives=
SKIP_GCC_SHLIB.pkgtools/pkgin=
SKIP_GCC_SHLIB.security/mozilla-rootcerts-openssl=
SKIP_GCC_SHLIB.security/mozilla-rootcerts=
SKIP_GCC_SHLIB.sysutils/bsdinstall=
.endif

#
# These are all the packages that are in the GCC bootstrap path.  If there is
# a package you expect to be here that isn't listed, it's likely because it has
# been avoided completely by exttools.mk using an external tool.
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
#
# Older branch builds on platforms that lack the native libc stack protector.
# 2021Q4 and 2022Q4 could have used this too but were missed at the time.
#
.  if ${BRANCH:M201[0-9]*} || ${BRANCH:M202[012]*}
PKGSRC_USE_SSP=		no
.  endif
#
# This adds a dependency on gcc-libs for all other packages.  Clearly this is
# undesirable and adds an unnecessary dependency in thousands of packages that
# do not need it, but there are currently too many packages that break due to a
# lack of USE_GCC_RUNTIME, and that isn't a good solution anyway.
#
# A better long-term solution is to figure out if libgcc-unwind.map can be
# dropped from GCC so that shared libraries do not automatically link against
# libgcc_s (https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59788).
#
# In the meantime, SKIP_GCC_SHLIB.${PKGPATH} is supported to avoid it for
# packages that we know do not need the dependency, and where we want to avoid
# unnecessary dependencies for reliability (e.g. pkgin) or size purposes.
#
.elif !defined(SKIP_GCC_SHLIB.${PKGPATH})
_USE_GCC_SHLIB?=	yes
.endif
