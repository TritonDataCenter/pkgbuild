#
# Additional mk.conf settings specific to OSX.
#

# Packages which currently hang the build
.if !empty(PKGPATH:Mgraphics/rayshade) \
 || !empty(PKGPATH:Mlang/jamvm) \
 || !empty(PKGPATH:Mmail/elm) \
 || !empty(PKGPATH:Mnet/gtk-gnutella) \
 || !empty(PKGPATH:Mnews/knews) \
 || !empty(PKGPATH:Mshells/pdksh) \
 || !empty(PKGPATH:Mtextproc/ja-groff) \
 || !empty(PKGPATH:Mwip/oce) \
 || !empty(PKGPATH:Mwww/wml)
NOT_FOR_BULK_PLATFORM=	Darwin-*-*
.endif

# Packages which do not fit in ramdisk build area.
.if !empty(PKGPATH:Mcross/avr-gcc) \
 || !empty(PKGPATH:Mdatabases/mariadb55-server) \
 || !empty(PKGPATH:Mdatabases/mongodb) \
 || !empty(PKGPATH:Mgames/flightgear-data) \
 || !empty(PKGPATH:Mham/gnuradio-core) \
 || !empty(PKGPATH:Mjoyent/mariadb10-server) \
 || !empty(PKGPATH:Mlang/clang*) \
 || !empty(PKGPATH:Mlang/gcc*) \
 || !empty(PKGPATH:Mlang/mercury) \
 || !empty(PKGPATH:Mlang/mono*) \
 || !empty(PKGPATH:Mwip/ghc) \
 || !empty(PKGPATH:Mwww/firefox) \
 || !empty(PKGPATH:Mwww/firefox??) \
 || !empty(PKGPATH:Mwww/webkit*-gtk*) \
 || !empty(PKGPATH:Mx11/kdelibs4) \
 || !empty(PKGPATH:Mx11/qt4-libs) \
 || !empty(PKGPATH:Mx11/x11/qt5-qtwebkit)
WRKOBJDIR=		/Users/pbulk/build-disk
.endif

# OSX does not perform name resolution in a chroot, so we need to hardcode
# entries in /etc/hosts and override the default site.
MASTER_SITE_OVERRIDE=	http://ftp.NetBSD.org/pub/pkgsrc/distfiles/

# Fix GCC builds
MULTILIB_SUPPORTED=	no
PKGSRC_FORTRAN=		gfortran

# X11 selection.  2015Q3 and earlier use Xquartz, 2015Q4 and onwards use
# modular-xorg from pkgsrc.
.if !empty(BRANCH:M*trunk)
X11_TYPE=	modular
.else
X11_TYPE=	native
X11BASE=	/opt/X11
.endif

# Native curl SIGBUS's when accessing HTTPS in a chroot.
.if exists(${TOOLS_BASEDIR}/bin/curl)
TOOLS_PATH.curl=	${TOOLS_BASEDIR}/bin/curl
.endif
