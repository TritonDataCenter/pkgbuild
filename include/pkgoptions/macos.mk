#
# macOS release package options.  Tune for desktop experience.
#
PKG_DEFAULT_OPTIONS+=	ncursesw
PKG_DEFAULT_OPTIONS+=	unicode utf8
PKG_DEFAULT_OPTIONS+=	bzip bzip2 lzo
PKG_DEFAULT_OPTIONS+=	curl geoip http2 inet6 libssh2
PKG_DEFAULT_OPTIONS+=	openssl sasl ssl tls
PKG_DEFAULT_OPTIONS+=	bdb db4 ldap
PKG_DEFAULT_OPTIONS+=	unixodbc memcached
PKG_DEFAULT_OPTIONS+=	gif jpeg png rsvg
PKG_DEFAULT_OPTIONS+=	faad lame mad vorbis jack
PKG_DEFAULT_OPTIONS+=	dv opencore-amr theora x264 xvid
PKG_DEFAULT_OPTIONS+=	opus x265
#
PKG_DEFAULT_OPTIONS+=	mutt-hcache mutt-smtp lmdb tokyocabinet
#
PKG_DEFAULT_OPTIONS+=	-proj-grids # Way too much disk space
#
PKG_OPTIONS.db4+=	-doc
PKG_OPTIONS.groff+=	-groff-docs
PKG_OPTIONS.gnustep+=	fragile
PKG_OPTIONS.gtk-vnc+=	-python # Allow this to build
PKG_OPTIONS.mutt+=	-tokyocabinet # lmdb
PKG_OPTIONS.nginx+=	dav status realip uwsgi memcache naxsi perl gzip
PKG_OPTIONS.nginx-devel+=	dav status realip uwsgi memcache naxsi perl gzip
PKG_OPTIONS.nmap+=	lua
PKG_OPTIONS.vim+=	lua perl python ruby
PKG_OPTIONS.weechat+=	lua perl python ruby wide-curses
