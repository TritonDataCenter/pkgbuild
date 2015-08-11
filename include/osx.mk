#
# Additional mk.conf settings specific to OSX.
#

# Packages which currently hang the build
.if !empty(PKGPATH:Mgraphics/rayshade) \
 || !empty(PKGPATH:Mlang/jamvm) \
 || !empty(PKGPATH:Mmail/elm) \
 || !empty(PKGPATH:Mnews/knews) \
 || !empty(PKGPATH:Mshells/pdksh) \
 || !empty(PKGPATH:Mtextproc/ja-groff) \
 || !empty(PKGPATH:Mwww/wml)
NOT_FOR_BULK_PLATFORM=	Darwin-*-*
.endif

# OSX does not perform name resolution in a chroot, so we need to hardcode
# entries in /etc/hosts and override the default site.
MASTER_SITE_OVERRIDE=	http://ftp.NetBSD.org/pub/pkgsrc/distfiles/

# Fix GCC builds
MULTILIB_SUPPORTED=	no

# Use XQuartz
X11_TYPE=	native
X11BASE=	/opt/X11

# Native curl SIGBUS's when accessing HTTPS in a chroot.
.if exists(${TOOLS_BASEDIR}/bin/curl)
TOOLS_PATH.curl=	${TOOLS_BASEDIR}/bin/curl
.endif
