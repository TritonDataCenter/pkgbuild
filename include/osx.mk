#
# Additional mk.conf settings specific to OSX.
#

# Packages which currently hang the build
.if !empty(PKGPATH:Mgraphics/rayshade) \
 || !empty(PKGPATH:Mlang/jamvm) \
 || !empty(PKGPATH:Mnews/knews) \
 || !empty(PKGPATH:Mshells/pdksh) \
 || !empty(PKGPATH:Mtextproc/ja-groff) \
 || !empty(PKGPATH:Mwww/wml)
NOT_FOR_BULK_PLATFORM=	Darwin-*-*
.endif

# Fix GCC builds
MULTILIB_SUPPORTED=	no

# Use XQuartz
X11_TYPE=	native
X11BASE=	/opt/X11

#
# Package options.  Tune for desktop experience.
#
PKG_DEFAULT_OPTIONS+=	ncursesw
PKG_DEFAULT_OPTIONS+=	unicode utf8
PKG_DEFAULT_OPTIONS+=	bzip bzip2 lzo
PKG_DEFAULT_OPTIONS+=	curl geoip inet6 libssh2
PKG_DEFAULT_OPTIONS+=	sasl ssl tls
PKG_DEFAULT_OPTIONS+=	bdb db4 ldap
PKG_DEFAULT_OPTIONS+=	unixodbc memcached
PKG_DEFAULT_OPTIONS+=	gif jpeg png rsvg
PKG_DEFAULT_OPTIONS+=	faad lame mad vorbis
PKG_DEFAULT_OPTIONS+=	dv opencore-amr theora x264 xvid
#
PKG_DEFAULT_OPTIONS+=	mutt-hcache mutt-smtp tokyocabinet
#
PKG_OPTIONS.gtk-vnc+=	-python # Allow this to build
PKG_OPTIONS.nginx+=	dav status realip uwsgi memcache naxsi perl spdy gzip
PKG_OPTIONS.weechat+=	lua perl python ruby wide-curses
