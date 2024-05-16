#
# Try to set options as defaults rather than package-specific so that all
# packages can benefit, then disable on a per-package basis as necessary.
#
# It also avoids issues with conflicting options between different versions,
# for example mutt vs mutt-devel.
#
#  - general options
#
PKG_DEFAULT_OPTIONS=		dtrace pam pcre readline
#
#  - options grouped by function
#
PKG_DEFAULT_OPTIONS+=		unicode utf8 wide-curses
PKG_DEFAULT_OPTIONS+=		bzip bzip2 lzo
PKG_DEFAULT_OPTIONS+=		curl geoip http2 inet6 libssh2
PKG_DEFAULT_OPTIONS+=		openssl sasl ssl tls
PKG_DEFAULT_OPTIONS+=		bdb db4 ldap
PKG_DEFAULT_OPTIONS+=		unixodbc memcached
PKG_DEFAULT_OPTIONS+=		gif jpeg png rsvg
PKG_DEFAULT_OPTIONS+=		faad lame mad vorbis
PKG_DEFAULT_OPTIONS+=		dv opencore-amr theora x264 xvid
PKG_DEFAULT_OPTIONS+=		opus x265
PKG_DEFAULT_OPTIONS+=		prometheus
PKG_DEFAULT_OPTIONS+=		acl
#
#  - options grouped by package
#
PKG_DEFAULT_OPTIONS+=		bind-json-statistics-server
PKG_DEFAULT_OPTIONS+=		bind-xml-statistics-server tuning
PKG_DEFAULT_OPTIONS+=		exim-auth-dovecot
PKG_DEFAULT_OPTIONS+=		exim-lookup-redis exim-lookup-sqlite
PKG_DEFAULT_OPTIONS+=		mutt-hcache mutt-smtp lmdb tokyocabinet
PKG_DEFAULT_OPTIONS+=		privileges suexec
PKG_DEFAULT_OPTIONS+=		dovecot-managesieve dovecot-sieve
PKG_DEFAULT_OPTIONS+=		elinks-root-exec
PKG_DEFAULT_OPTIONS+=		kerberos-prefix-cmds
PKG_DEFAULT_OPTIONS+=		postfix-milter
PKG_DEFAULT_OPTIONS+=		nagios-nrpe-args
PKG_DEFAULT_OPTIONS+=		mysqlnd sphinx
PKG_DEFAULT_OPTIONS+=		unrealircd-ziplinks
#
#  - negate options
#
PKG_DEFAULT_OPTIONS+=		-gdb6-tui
PKG_DEFAULT_OPTIONS+=		-libgccjit
PKG_DEFAULT_OPTIONS+=		-mplayer-runtime-cpudetection
PKG_DEFAULT_OPTIONS+=		-ruby-build-ri-db
#
#  - options we cannot enable by default as they force a particular version
#    which may conflict with user preference
#
PKG_OPTIONS.django=		pgsql sqlite
PKG_OPTIONS.sphinx-search=	mysql pgsql
PKG_OPTIONS.sympa=		mysql pgsql
PKG_OPTIONS.sysbench=		mysql pgsql
PKG_OPTIONS.ejabberd=		sqlite

#
# Package specific build options.  These should mostly be either negative
# options to revert defaults or mutually-exclusive selections.
#
PKG_OPTIONS.clamav+=		milter
PKG_OPTIONS.db4+=		-doc
PKG_OPTIONS.exim+=		saslauthd spf
PKG_OPTIONS.ffmpeg+=		tools	# XXX: make default in pkgsrc
PKG_OPTIONS.freeradius+=	-bdb	# no db4 support
PKG_OPTIONS.gearmand+=		-memcached
PKG_OPTIONS.gitea+=		-pam
PKG_OPTIONS.gnustep+=		fragile
PKG_OPTIONS.graphviz+=		-perl	# XXX: multiarch
PKG_OPTIONS.gs_type+=		ghostscript-agpl
PKG_OPTIONS.hunspell+=		-wide-curses
PKG_OPTIONS.irssi+=		perl
PKG_OPTIONS.lighttpd+=		lua
PKG_OPTIONS.mc+=		ncurses
PKG_OPTIONS.memcached+=		-dtrace # XXX: illumos#6653
PKG_OPTIONS.modular-xorg-server+=	-dtrace # XXX: illumos#6653
PKG_OPTIONS.mutt+=		-tokyocabinet # lmdb
PKG_OPTIONS.nginx+=		auth-request dav geoip2 gzip headers-more
PKG_OPTIONS.nginx+=		memcache naxsi perl realip
PKG_OPTIONS.nginx+=		slice status uwsgi
PKG_OPTIONS.nginx-devel+=	auth-request dav geoip2 gzip headers-more
PKG_OPTIONS.nginx-devel+=	memcache naxsi perl realip
PKG_OPTIONS.nginx-devel+=	slice status uwsgi
PKG_OPTIONS.nmap+=		lua
PKG_OPTIONS.openldap-server+=	-unixodbc
PKG_OPTIONS.p5-HTML-Mason+=	modperl fastcgi
PKG_OPTIONS.postgresql13+=	-gssapi
PKG_OPTIONS.postgrey+=		postgrey-targrey
PKG_OPTIONS.powerdns+=		sqlite
PKG_OPTIONS.screen+=		ncurses
PKG_OPTIONS.spidermonkey+=	-threads
PKG_OPTIONS.tftp-hpa+=		remap
PKG_OPTIONS.vim+=		perl python
PKG_OPTIONS.weechat+=		lua perl python ruby

#
# Global version defaults.  Only add overrides from the pkgsrc defaults so that
# we don't end up falling behind due to missed bumps.
#
#EMACS_TYPE=
#LUA_VERSION_DEFAULT=
#MYSQL_VERSION_DEFAULT=
#PGSQL_VERSION_DEFAULT=
#PHP_VERSION_DEFAULT=
#PKG_APACHE_DEFAULT=
PKG_JVM_DEFAULT=		openjdk17
#PYTHON_VERSION_DEFAULT=
#RUBY_RAILS_DEFAULT=
#RUBY_VERSION_DEFAULT=

#
# Only build specific versions for limited_list tools builds.
#
.if ${PKGBUILD:M*-tools}
#PYTHON_VERSION_REQD=		39	# 27 required for nodejs
RUBY_VERSION_REQD=		${RUBY_VERSION_DEFAULT}
.endif

#
# XXX: This doesn't really belong here, move somewhere more sensible
#
JPEG_DEFAULT=			libjpeg-turbo
