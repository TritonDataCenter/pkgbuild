#
# Try to set options as defaults rather than package-specific so that all
# packages can benefit, then disable on a per-package basis as necessary.
#
# It also avoids issues with conflicting options between different versions,
# for example mutt vs mutt-devel.
#
#  - general options
#
PKG_DEFAULT_OPTIONS=		dtrace pam pcre readline ncursesw
#
#  - options grouped by function
#
PKG_DEFAULT_OPTIONS+=		unicode utf8
PKG_DEFAULT_OPTIONS+=		bzip bzip2 lzo
PKG_DEFAULT_OPTIONS+=		curl geoip inet6 libssh2
PKG_DEFAULT_OPTIONS+=		sasl ssl tls
PKG_DEFAULT_OPTIONS+=		bdb db4 ldap
PKG_DEFAULT_OPTIONS+=		unixodbc memcached
PKG_DEFAULT_OPTIONS+=		gif jpeg png rsvg
PKG_DEFAULT_OPTIONS+=		faad lame mad vorbis
PKG_DEFAULT_OPTIONS+=		dv opencore-amr theora x264 xvid
#
#  - options grouped by package
#
PKG_DEFAULT_OPTIONS+=		mutt-hcache mutt-smtp tokyocabinet
PKG_DEFAULT_OPTIONS+=		privileges suexec
PKG_DEFAULT_OPTIONS+=		dovecot-managesieve dovecot-sieve
PKG_DEFAULT_OPTIONS+=		elinks-root-exec
PKG_DEFAULT_OPTIONS+=		kerberos-prefix-cmds
PKG_DEFAULT_OPTIONS+=		postfix-milter
PKG_DEFAULT_OPTIONS+=		nagios-nrpe-args
PKG_DEFAULT_OPTIONS+=		mysqlnd sphinx
#
#  - negate options
#
PKG_DEFAULT_OPTIONS+=		-gdb6-tui
PKG_DEFAULT_OPTIONS+=		-mplayer-runtime-cpudetection
PKG_DEFAULT_OPTIONS+=		-ruby-build-ri-db
#
#  - options we cannot enable by default as they force a particular version
#    which may conflict with user preference
#
PKG_OPTIONS.django=		pgsql sqlite
PKG_OPTIONS.dovecot=		sqlite
PKG_OPTIONS.postfix=		sqlite
PKG_OPTIONS.sphinx-search=	mysql pgsql
PKG_OPTIONS.sqlrelay=		mysql sqlite
PKG_OPTIONS.sympa=		mysql pgsql
PKG_OPTIONS.sysbench=		mysql pgsql
PKG_OPTIONS.ejabberd=		sqlite

#
# Package specific build options.  These should mostly be either negative
# options to revert defaults or mutually-exclusive selections.
#
PKG_OPTIONS.clamav+=		milter
PKG_OPTIONS.ffmpeg+=		tools	# XXX: make default in pkgsrc
PKG_OPTIONS.freeradius+=	-bdb	# no db4 support
PKG_OPTIONS.gnustep+=		fragile
PKG_OPTIONS.graphviz+=		-perl	# XXX: multiarch
PKG_OPTIONS.irssi+=		perl
PKG_OPTIONS.libthrift+=		java php ruby
PKG_OPTIONS.lighttpd+=		lua bzip
PKG_OPTIONS.mc+=		ncurses
PKG_OPTIONS.nginx+=		dav status realip uwsgi memcache naxsi perl spdy
PKG_OPTIONS.openldap-server+=	-unixodbc
PKG_OPTIONS.openssh+=		hpn-patch
PKG_OPTIONS.p5-HTML-Mason+=	modperl fastcgi
PKG_OPTIONS.rsyslog+=		file gnutls
PKG_OPTIONS.scmgit+=		-python
PKG_OPTIONS.screen+=		ncurses
PKG_OPTIONS.spidermonkey+=	-threads
PKG_OPTIONS.tftp-hpa+=		remap
PKG_OPTIONS.qmail+=		-sasl -tls
PKG_OPTIONS.gearmand+=		-memcached
PKG_OPTIONS.postgrey+=		postgrey-targrey
PKG_OPTIONS.powerdns=		sqlite
PKG_OPTIONS.bind910+=		bind-json-statistics-server bind-xml-statistics-server

#
# Global version defaults
#
LUA_VERSION_DEFAULT=		51
MYSQL_VERSION_DEFAULT=		56
PGSQL_VERSION_DEFAULT=		93
PHP_VERSION_DEFAULT=		55
PKG_APACHE_DEFAULT=		apache24
PYTHON_VERSION_DEFAULT=		27
RUBY_RAILS_DEFAULT=		32
RUBY_VERSION_DEFAULT=		193

#
# XXX: This doesn't really belong here, move somewhere more sensible
#
EMACS_TYPE=			emacs24nox
JPEG_DEFAULT=			libjpeg-turbo
