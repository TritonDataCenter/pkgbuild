#
# Additional mk.conf settings specific to OSX.
#

# Packages which currently hang the build
.if !empty(PKGPATH:Mgames/crimsonfields) \
 || !empty(PKGPATH:Mgames/freeciv-client) \
 || !empty(PKGPATH:Mgraphics/rayshade) \
 || !empty(PKGPATH:Mlang/jamvm) \
 || !empty(PKGPATH:Mlang/mono6) \
 || !empty(PKGPATH:Mmail/elm) \
 || !empty(PKGPATH:Mmultimedia/acidrip) \
 || !empty(PKGPATH:Mmultimedia/dumpmpeg) \
 || !empty(PKGPATH:Mnet/gtk-gnutella) \
 || !empty(PKGPATH:Mnews/knews) \
 || !empty(PKGPATH:Mshells/pdksh) \
 || !empty(PKGPATH:Mtextproc/ja-groff) \
 || !empty(PKGPATH:Mwip/oce) \
 || !empty(PKGPATH:Mwww/wml)
NOT_FOR_BULK_PLATFORM=	Darwin-*-*
.endif

# Packages which do not fit in ramdisk build area.
.if !empty(PKGPATH:Mcross/*gcc*) \
 || !empty(PKGPATH:Mdatabases/mariadb55-server) \
 || !empty(PKGPATH:Mdatabases/mongodb) \
 || !empty(PKGPATH:Mdevel/xulrunner*) \
 || !empty(PKGPATH:Mfonts/noto-ttf) \
 || !empty(PKGPATH:Mgames/flightgear-data) \
 || !empty(PKGPATH:Mgraphics/tesseract) \
 || !empty(PKGPATH:Mham/gnuradio-core) \
 || !empty(PKGPATH:Mjoyent/mariadb10-server) \
 || !empty(PKGPATH:Mlang/clang*) \
 || !empty(PKGPATH:Mlang/gcc*) \
 || !empty(PKGPATH:Mlang/llvm) \
 || !empty(PKGPATH:Mlang/mercury) \
 || !empty(PKGPATH:Mlang/mono*) \
 || !empty(PKGPATH:Mlang/nodejs*) \
 || !empty(PKGPATH:Mlang/rust) \
 || !empty(PKGPATH:Mmail/thunderbird*) \
 || !empty(PKGPATH:Mwip/ghc) \
 || !empty(PKGPATH:Mwww/firefox) \
 || !empty(PKGPATH:Mwww/firefox??) \
 || !empty(PKGPATH:Mwww/seamonkey) \
 || !empty(PKGPATH:Mwww/webkit*-gtk*) \
 || !empty(PKGPATH:Mx11/kdelibs4) \
 || !empty(PKGPATH:Mx11/qt4-libs) \
 || !empty(PKGPATH:Mx11/x11/qt5-qtwebkit)
WRKOBJDIR=		/Users/pbulk/build-disk
.endif

# OSX does not perform name resolution in a chroot, so we need to hardcode
# entries in /etc/hosts and override the default site.
MASTER_SITE_OVERRIDE=	http://cdn.NetBSD.org/pub/pkgsrc/distfiles/

# Fix GCC builds
MULTILIB_SUPPORTED=	no
PKGSRC_FORTRAN=		gfortran

# Use modular-xorg since 2015Q4.
X11_TYPE=		modular

# Native curl SIGBUS's when accessing HTTPS in a chroot.
.if exists(${TOOLS_BASEDIR}/bin/curl)
TOOLS_PATH.curl=	${TOOLS_BASEDIR}/bin/curl
.endif

# This is duplicated from exttools.mk, should do it properly at some point.
.if ${PKGBUILD} == "osx-trunk-i386"
.  if !empty(PKGPATH:Mlang/gcc*)
TOOLS_PLATFORM.perl=	${TOOLS_BASEDIR}/bin/perl
.  endif
.endif
