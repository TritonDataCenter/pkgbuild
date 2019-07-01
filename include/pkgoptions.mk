#
# Load the branch-specific PKG_OPTIONS file.
#
.include "${PKGBUILD_BASEDIR}/include/pkgoptions/${BRANCH}.mk"

#
# Generic package-specific configuration options.  May need to be moved to
# branch-specific files at some point.
#

# Apache
APACHE_SUEXEC_DOCROOT=		/home
APACHE_SUEXEC_CONFIGURE_ARGS=	--with-suexec-userdir=web/public
APACHE_MODULES=			all-shared

# Courier
AUTHDAEMONVAR=			/var/authdaemon

# Mailman
MAILMAN_CGIEXT=			# empty
MAILMAN_MAILGROUP=		mailman

# MySQL
MYSQL_DATADIR=			/var/mysql
MYSQL_CHARSET=			utf8
MYSQL_COLLATION=		utf8_general_ci

# PostgreSQL
PGHOME=				/var/pgsql
PGUSER=				postgres
PGGROUP=			postgres
PKG_SHELL.${PGUSER}=		/usr/bin/pfbash

# PHP
PHP_MYSQL_DRIVER=		mysqlnd

# Sympa
SYMPA_VARBASE=			/var/sympa

# Dspam
DSPAM_DELIVERY_AGENT=		maildrop

# Amavis
AMAVIS_USER=			amavis
AMAVIS_GROUP=			amavis

#eruby
ERUBY_DEFAULT_CHARSET=		utf8

#nginx
NGINX_PIDDIR=			/var/db/nginx
NGINX_USER=			www
NGINX_GROUP=			www

#lighttpd
LIGHTTPD_USER=			www
LIGHTTPD_GROUP=			www

#prosody
PROSODY_RUN=			/var/db/prosody

#redis
REDIS_PIDDIR=			/var/db/redis

#munin
MUNIN_STATEDIR=			/var/munin/run
MUNIN_RUN=			${MUNIN_STATEDIR}

#bind
BIND_DIR=			/var/named

#jabber related packages
JABBER_USER=			ejabberd
JABBER_GROUP=			ejabberd
EJABBERD_USER=			${JABBER_USER}
EJABBERD_GROUP=			${JABBER_GROUP}

#spectrum
SPECTRUM_RUN=			/var/db/spectrum
SPECTRUM_DB=			/var/db/spectrum
SPECTRUM_LOG=			/var/log/spectrum

#zookeeper
ZK_RUN=				/var/db/zookeeper

#hadoop pid dirs
HBASE_PID_DIR=			${VARBASE}/log/hbase
OOZIE_PID_DIR=			${VARBASE}/log/oozie
PIG_PID_DIR=			${VARBASE}/log/pig
TEMPLETON_PID_DIR=		${VARBASE}/log/templeton

#pgpool
PGPOOL_PIDDIR=			${PGHOME}/pgpool

#spread
SPREAD_DIR=			${VARBASE}/spool/spread

#elasticsearch
ES_PIDDIR=			${ES_TMPDIR}

#pgbouncer
PGB_RUN_DIR=			${PGB_LOG_DIR}

#nagios, NAGIOSDIR defaults to /var/spool/nagios
NAGIOSLOCKDIR=			${NAGIOSDIR}

#couchdb
COUCH_RUNDIR=			${VARBASE}/spool/couchdb
