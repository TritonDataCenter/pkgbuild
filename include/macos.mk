#
# Additional mk.conf settings specific to macOS.
#

# /tmp/go-build* sometimes fills up
.if ${PKGPATH:Mlang/go[0-9]*}
MAKEFLAGS+=		TMPDIR=${WRKOBJDIR:Q}
.endif
MAKE_ENV+=		GOTMPDIR=${WRKOBJDIR:Q}

MASTER_SITE_OVERRIDE=	http://cdn.NetBSD.org/pub/pkgsrc/distfiles/

# Fix GCC builds
MULTILIB_SUPPORTED=	no
PKGSRC_FORTRAN=		gfortran

# Use modular-xorg since 2015Q4.
X11_TYPE=		modular

# Stupid Apple.  Needed for lang/go-bin.
DARWIN_CHROOTED=	yes

# Hack to avoid nodejs-18, this isn't really a user variable.
.if ${OPSYS_VERSION} < 110000
NODE_VERSIONS_INCOMPATIBLE+=	18
.endif

# Native curl SIGBUS's when accessing HTTPS in a chroot.
.if exists(${TOOLS_BASEDIR}/bin/curl)
TOOLS_PATH.curl=	${TOOLS_BASEDIR}/bin/curl
.endif

TOOLS_PLATFORM.printf=	printf
TOOLS_PLATFORM.pwd=	pwd
