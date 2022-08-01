#
# Additional mk.conf settings specific to macOS.
#

# Packages which do not fit in ramdisk build area.
.if !empty(PKGPATH:Maudio/musescore) \
 || !empty(PKGPATH:Mcross/*gcc*) \
 || !empty(PKGPATH:Mdatabases/mariadb55-server) \
 || !empty(PKGPATH:Mdatabases/mongodb) \
 || !empty(PKGPATH:Mdevel/xulrunner*) \
 || !empty(PKGPATH:Memulators/mame) \
 || !empty(PKGPATH:Memulators/qemu) \
 || !empty(PKGPATH:Mfonts/noto-ttf) \
 || !empty(PKGPATH:Mgames/flightgear-data) \
 || !empty(PKGPATH:Mgeography/proj) \
 || !empty(PKGPATH:Mgraphics/tesseract) \
 || !empty(PKGPATH:Mham/gnuradio-core) \
 || !empty(PKGPATH:Mjoyent/mariadb10-server) \
 || !empty(PKGPATH:Mlang/clang*) \
 || !empty(PKGPATH:Mlang/gcc*) \
 || !empty(PKGPATH:Mlang/ghc*) \
 || !empty(PKGPATH:Mlang/llvm) \
 || !empty(PKGPATH:Mlang/mercury) \
 || !empty(PKGPATH:Mlang/mono*) \
 || !empty(PKGPATH:Mlang/nodejs*) \
 || !empty(PKGPATH:Mlang/rust) \
 || !empty(PKGPATH:Mmail/thunderbird*) \
 || !empty(PKGPATH:Mwip/ghc) \
 || !empty(PKGPATH:Mwip/rust) \
 || !empty(PKGPATH:Mwww/firefox) \
 || !empty(PKGPATH:Mwww/firefox??) \
 || !empty(PKGPATH:Mwww/grafana) \
 || !empty(PKGPATH:Mwww/seamonkey) \
 || !empty(PKGPATH:Mwww/webkit*-gtk*) \
 || !empty(PKGPATH:Mx11/kdelibs4) \
 || !empty(PKGPATH:Mx11/qt4-libs) \
 || !empty(PKGPATH:Mx11/x11/qt5-qtwebkit)
WRKOBJDIR=		/Users/pbulk/build-disk
.endif

MASTER_SITE_OVERRIDE=	http://cdn.NetBSD.org/pub/pkgsrc/distfiles/

# Fix GCC builds
MULTILIB_SUPPORTED=	no
PKGSRC_FORTRAN=		gfortran

# Use modular-xorg since 2015Q4.
X11_TYPE=		modular

# Stupid Apple.  Needed for lang/go-bin.
.if ${MACHINE_ARCH} == "aarch64"
DARWIN_CHROOTED=	yes
.endif

# Hack to avoid nodejs-18, this isn't really a user variable.
.if ${OPSYS_VERSION} < 110000
NODE_VERSIONS_INCOMPATIBLE+=	18
.endif

# Native curl SIGBUS's when accessing HTTPS in a chroot.
.if exists(${TOOLS_BASEDIR}/bin/curl)
TOOLS_PATH.curl=	${TOOLS_BASEDIR}/bin/curl
.endif
