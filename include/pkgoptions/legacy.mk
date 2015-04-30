#
# Default pkgsrc-wide options possibly employed by packages
#
PKG_DEFAULT_OPTIONS=		-doc dtrace inet6 unicode -x11

#
# Package specific build options.
#
PKG_OPTIONS.ImageMagick=	-wmf
PKG_OPTIONS.MesaLib=		dri
PKG_OPTIONS.SDL=		-arts -esound -nas -pulseaudio noaudio
PKG_OPTIONS.ap-modsecurity2=	curl
.if defined(PKGPATH) && !empty(PKGPATH:Mapache22)
PKG_OPTIONS.apache=		suexec apache-shared-modules
.elif defined(PKGPATH) && !empty(PKGPATH:Mapache24)
PKG_OPTIONS.apache=		suexec privileges
.else
PKG_OPTIONS.apache=		suexec
.endif
PKG_OPTIONS.apr-util=		ldap db4
PKG_OPTIONS.cairo=		x11
PKG_OPTIONS.courier-authlib=	bdb pam
PKG_OPTIONS.cups=		-dbus -dnssd -kerberos -slp -ghostscript 
PKG_OPTIONS.curl=		libssh2
PKG_OPTIONS.dbus=		#
PKG_OPTIONS.django=		mysql pgsql sqlite
.if defined(PKGPATH) && ${PKGPATH} == "mail/dovecot"
PKG_OPTIONS.dovecot=		pam sqlite dovecot-sieve dovecot-managesieve
.else
PKG_OPTIONS.dovecot=		pam sqlite
.endif
PKG_OPTIONS.doxygen=		-latex
PKG_OPTIONS.elinks=		elinks-root-exec
PKG_OPTIONS.erlang=		unixodbc
PKG_OPTIONS.ffmpeg=		xvid x264 theora tools opencore-amr
PKG_OPTIONS.gcc47=		-gcc-objc -gcc-objc++
PKG_OPTIONS.gdb6=		-gdb6-tui
PKG_OPTIONS.ghostscript=	#
PKG_OPTIONS.gmp=		-gmp-fat
PKG_OPTIONS.graphviz=		-gtk pangocairo x11
PKG_OPTIONS.groff=		-groff-docs
PKG_OPTIONS.gtk2=		x11
PKG_OPTIONS.heimdal=		kerberos-prefix-cmds
PKG_OPTIONS.irssi=		perl ssl
PKG_OPTIONS.libpurple=		-gstreamer -farsight -avahi -dbus -gnome
PKG_OPTIONS.libsndfile=		-sun
PKG_OPTIONS.libthrift=		java php ruby
PKG_OPTIONS.lighttpd=		lua bzip ldap
PKG_OPTIONS.lynx=		-curses ncursesw
PKG_OPTIONS.mc=			-slang ncurses
PKG_OPTIONS.mencoder=		-dts dv -dvdread -dvdnav gif jpeg lame mad -mlib png theora vorbis x264 xvid -mplayer-runtime-cpudetection
PKG_OPTIONS.milter-greylist=	postfix-milter
PKG_OPTIONS.mongodb=		ssl
.if defined(PKGPATH) && !empty(PKGPATH:Maudio/mpg123)
PKG_OPTIONS.mpg123=		mpg123-with-fpu -mpg123-fifo
.endif
PKG_OPTIONS.mutt=		ncursesw
.if defined(PKGPATH) && !empty(PKGPATH:Mmail/mutt-devel)
PKG_OPTIONS.mutt+=		mutt-hcache mutt-smtp sasl tokyocabinet
.endif
.if defined(PKGPATH) && !empty(PKGPATH:Mmysql51)
PKG_OPTIONS.mysql5=		-embedded-server -mysqlmanager -ndb-cluster -pstack
.else
PKG_OPTIONS.mysql5=		-embedded-server -ndb-cluster
.endif
PKG_OPTIONS.nagios-nrpe=	ssl nagios-nrpe-args
PKG_OPTIONS.netcat6=		inet6
PKG_OPTIONS.nginx=		dav status realip uwsgi memcache
PKG_OPTIONS.openldap-client=	sasl
PKG_OPTIONS.openldap-server=	sasl bdb
PKG_OPTIONS.openoffice3=	lang-all -xulrunner -gtk2
PKG_OPTIONS.openssh=		hpn-patch
PKG_OPTIONS.openvpn=		pam
PKG_OPTIONS.p5-HTML-Mason=	modperl fcgi
PKG_OPTIONS.php-sqlite=		utf8
PKG_OPTIONS.php=		readline
PKG_OPTIONS.pkgin=		gzip-summary
PKG_OPTIONS.postfix=		pcre sasl tls sqlite
PKG_OPTIONS.proftpd=		tls pam
PKG_OPTIONS.pulseaudio=		-avahi
PKG_OPTIONS.riak=		innostore
PKG_OPTIONS.roundcube=		#
PKG_OPTIONS.rsyslog=		file
PKG_OPTIONS.ruby=		-ruby-build-ri-db
PKG_OPTIONS.scmgit=		-python
PKG_OPTIONS.screen=		ncurses
PKG_OPTIONS.sendmail=		tls
PKG_OPTIONS.spamprobe=		bdb
PKG_OPTIONS.sphinx-search=	mysql pgsql
PKG_OPTIONS.spidermonkey=	-threads unicode
PKG_OPTIONS.sqlrelay=		mysql sqlite oracle
PKG_OPTIONS.subversion=		#
PKG_OPTIONS.sudo=		pam ldap
PKG_OPTIONS.sympa=		mysql pgsql
PKG_OPTIONS.sysbench=		mysql pgsql
PKG_OPTIONS.tftp-hpa=		remap
PKG_OPTIONS.webalizer=		geoip
PKG_OPTIONS.wireshark=		-gtk2
PKG_OPTIONS.wxGTK28=		unicode
PKG_OPTIONS.x264-devel=		-threads
PKG_OPTIONS.pytables=		lzo
PKG_OPTIONS.vsftpd=		ssl
PKG_OPTIONS.postgresql-pgpool2=	ssl

#
# Global version defaults
#
MYSQL_VERSION_DEFAULT=		55
PGSQL_VERSION_DEFAULT=		91
PHP_VERSION_DEFAULT=		54
PYTHON_VERSION_DEFAULT=		27
RUBY_RAILS_DEFAULT=		32
RUBY_VERSION_DEFAULT=		193
