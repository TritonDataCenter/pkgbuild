# Per package SMF defines

SMF_USER.postgrey=		${POSTGREY_USER}
SMF_GROUP.postgrey=		${POSTGREY_GROUP}
SMF_HOME.postgrey=		${POSTGREY_DBDIR}

SMF_USER.memcached=		${MEMCACHED_USER}

SMF_HOME.ejabberd=		${EJABBERD_DB}
SMF_USER.ejabberd=		${JABBER_USER}
SMF_GROUP.ejabberd=		${JABBER_GROUP}
SMF_USER.spectrum=		${JABBER_USER}
SMF_GROUP.spectrum=		${JABBER_GROUP}

SMF_NAME.py27-jabber-aimt=	jabber
SMF_INSTANCE.py27-jabber-aimt=	aim
SMF_USER.py27-jabber-aimt=	${JABBER_USER}
SMF_GROUP.py27-jabber-aimt=	${JABBER_GROUP}
SMF_NAME.py27-jabber-icqt=	jabber
SMF_INSTANCE.py27-jabber-icqt=	icq
SMF_USER.py27-jabber-icqt=	${JABBER_USER}
SMF_GROUP.py27-jabber-icqt=	${JABBER_GROUP}
SMF_NAME.py27-jabber-msnt=	jabber
SMF_INSTANCE.py27-jabber-msnt=	msn
SMF_USER.py27-jabber-msnt=	${JABBER_USER}
SMF_GROUP.py27-jabber-msnt=	${JABBER_GROUP}

SMF_NAME.py27-jabber-yahoo-transport=		jabber
SMF_INSTANCE.py27-jabber-yahoo-transport=	yahoo
SMF_USER.py27-jabber-yahoo-transport=		${JABBER_USER}
SMF_GROUP.py27-jabber-yahoo-transport=		${JABBER_GROUP}

SMF_USER.couchdb=		${COUCH_USER}
SMF_GROUP.couchdb=		${COUCH_GROUP}
SMF_HOME.couchdb=		${COUCH_DBDIR}

SMF_NAME.mysql-server=		mysql

SMF_NAME.postgresql84-server=	postgresql
SMF_NAME.postgresql90-server=	postgresql
SMF_NAME.postgresql91-server=	postgresql
SMF_NAME.postgresql92-server=	postgresql

SMF_NAME.erlang=		epmd

SMF_NAME.amavisd-new=		amavisd
SMF_USER.amavisd-new=		${AMAVIS_USER}
SMF_GROUP.amavisd-new=		${AMAVIS_GROUP}

SMF_NAME.courier-imap=		courier
SMF_INSTANCE.courier-imap=	imap
SMF_NAME.courier-authlib=	courier
SMF_INSTANCE.courier-authlib=	authlib

SMF_NAME.bind=			dns/server

SMF_NAME.net-snmp=		snmp

SMF_USER.rabbitmq=		${RMQ_USER}
SMF_GROUP.rabbitmq=		${RMQ_GROUP}
SMF_HOME.rabbitmq=		${RMQ_DIR}

SMF_USER.clamav=		${CLAMAV_USER}
SMF_GROUP.clamav=		${CLAMAV_GROUP}
SMF_HOME.clamav=		${CLAMAV_DBDIR}

SMF_NAME.py27-denyhosts=	denyhosts

SMF_NAME.munin-node=		munin

SMF_NAME.apache22=		apache

SMF_USER.trac=			www
SMF_GROUP.trac=			www

SMF_USER.varnish=		${VRNUSER}
SMF_GROUP.varnish=		${VRNGROUP}

SMF_USER.riak=			${RIAK_USER}
SMF_GROUP.riak=			${RIAK_GROUP}
SMF_HOME.riak=			${RIAK_DATA}

SMF_NAME.riakeds=		riak
SMF_USER.riakeds=		${RIAK_USER}
SMF_GROUP.riakeds=		${RIAK_GROUP}
SMF_HOME.riakeds=		${RIAK_DATA}

SMF_NAME.zookeeper-server=	zookeeper
SMF_USER.zookeeper-server=	${ZK_USER}
SMF_GROUP.zookeeper-server=	${ZK_GROUP}

SMF_NAME.nodejs=		node

SMF_NAME.sphinxsearch=		sphinx

SMF_NAME.mDNSResponder=		mdnsresponder

SMF_NAME.php53-fpm=		php-fpm
SMF_NAME.php54-fpm=		php-fpm
SMF_NAME.php55-fpm=		php-fpm

SMF_USER.redis=			${REDIS_USER}
SMF_GROUP.redis=		${REDIS_GROUP}
SMF_HOME.redis=			${REDIS_DATADIR}

SMF_USER.sqlrelay=		${SQLR_USER}
SMF_GROUP.sqlrelay=		${SQLR_GROUP}
SMF_HOME.sqlrelay=		${SQLR_DATA}

SMF_NAME.apache-tomcat=		tomcat
SMF_USER.apache-tomcat=		${TOMCAT_USER}
SMF_GROUP.apache-tomcat=	${TOMCAT_GROUP}

SMF_NAME.nagios-base=		nagios
SMF_USER.nagios-base=		${NAGIOS_USER}
SMF_GROUP.nagios-base=		${NAGIOS_GROUP}
SMF_HOME.nagios-base=		${NAGIOSDIR}

SMF_NAME.nagios-nrpe=		nrpe
SMF_USER.nagios-nrpe=		${NAGIOS_USER}
SMF_GROUP.nagios-nrpe=		${NAGIOS_GROUP}
SMF_HOME.nagios-nrpe=		${NAGIOSDIR}

SMF_USER.mongodb=		${MONGODB_USER}
SMF_GROUP.mongodb=		${MONGODB_GROUP}
SMF_HOME.mongodb=		${MONGODB_DBPATH}

SMF_NAME.rsync=			rsyncd

SMF_HOME.apache-cassandra=	${VARBASE}/lib/cassandra
SMF_USER.apache-cassandra=	${CASSANDRA_USER}
SMF_GROUP.apache-cassandra=	${CASSANDRA_GROUP}

SMF_NAME.postgresql-pgpool2=	pgpool
SMF_USER.postgresql-pgpool2=	pgpool
SMF_GROUP.postgresql-pgpool2=	${PGGROUP}

SMF_USER.spread=		spread
SMF_GROUP.spread=		spread
SMF_HOME.spread=		${SPREAD_DIR}
