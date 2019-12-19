#
# Define per-package projects supported in 2014Q4 onwards.
#

SMF_PROJECT.apache-cassandra=	cassandra
SMF_PROJECT_ATTRS.cassandra=	process.max-file-descriptor=(basic,10000,deny)
SMF_PROJECT_DESC.cassandra=	Cassandra service
SMF_PROJECT_GROUP.cassandra=	cassandra
SMF_PROJECT_USER.cassandra=	cassandra

SMF_PROJECT.couchdb=		couchdb
SMF_PROJECT_ATTRS.couchdb=	process.max-file-descriptor=(basic,65536,deny)
SMF_PROJECT_DESC.couchdb=	CouchDB service
SMF_PROJECT_GROUP.couchdb=	${COUCH_USER}
SMF_PROJECT_USER.couchdb=	${COUCH_USER}

SMF_PROJECT.elasticsearch=	elastic
SMF_PROJECT_ATTRS.elastic=	process.max-file-descriptor=(basic,65536,deny)
SMF_PROJECT_DESC.elastic=	Elastic Search service
SMF_PROJECT_GROUP.elastic=	${ES_GROUP}
SMF_PROJECT_USER.elastic=	${ES_USER}

SMF_PROJECT.mongodb=		mongodb
SMF_PROJECT_ATTRS.mongodb=	process.max-file-descriptor=(basic,10000,deny)
SMF_PROJECT_DESC.mongodb=	MongoDB service
SMF_PROJECT_GROUP.mongodb=	mongodb
SMF_PROJECT_USER.mongodb=	mongodb

SMF_PROJECT.mysql-cluster=	mysql
SMF_PROJECT.mysql-server=	mysql
SMF_PROJECT.percona-cluster=	mysql
SMF_PROJECT.percona-server=	mysql
SMF_PROJECT.mariadb-server=	mysql
SMF_PROJECT_ATTRS.mysql=	process.max-file-descriptor=(basic,15000,deny)
SMF_PROJECT_DESC.mysql=		MySQL service
SMF_PROJECT_GROUP.mysql=	${MYSQL_GROUP}
SMF_PROJECT_USER.mysql=		${MYSQL_USER}

SMF_PROJECT.php53-fpm=		php
SMF_PROJECT.php54-fpm=		php
SMF_PROJECT.php55-fpm=		php
SMF_PROJECT.php56-fpm=		php
SMF_PROJECT.php70-fpm=		php
SMF_PROJECT_ATTRS.php=		process.max-file-descriptor=(basic,65536,deny)
SMF_PROJECT_DESC.php=		PHP FPM service

SMF_PROJECT.postgresql84-server=postgres
SMF_PROJECT.postgresql90-server=postgres
SMF_PROJECT.postgresql91-server=postgres
SMF_PROJECT.postgresql92-server=postgres
SMF_PROJECT.postgresql93-server=postgres
SMF_PROJECT.postgresql94-server=postgres
SMF_PROJECT.postgresql95-server=postgres
SMF_PROJECT.postgresql96-server=postgres
SMF_PROJECT_ATTRS.postgres=	process.max-file-descriptor=(basic,10000,deny)
SMF_PROJECT_DESC.postgres=	PostgreSQL service
SMF_PROJECT_GROUP.postgres=	${PGGROUP}
SMF_PROJECT_USER.postgres=	${PGUSER}

SMF_PROJECT.redis=		redis
SMF_PROJECT_ATTRS.redis=	process.max-file-descriptor=(basic,65536,deny)
SMF_PROJECT_DESC.redis=		Redis service
SMF_PROJECT_GROUP.redis=	redis
SMF_PROJECT_USER.redis=		redis

SMF_PROJECT.riak=		riak
SMF_PROJECT_ATTRS.riak=		process.max-file-descriptor=(priv,262140,deny)
SMF_PROJECT_DESC.riak=		Riak service
SMF_PROJECT_GROUP.riak=		riak
SMF_PROJECT_USER.riak=		riak

SMF_PROJECT.apache-tomcat=	tomcat
SMF_PROJECT_ATTRS.tomcat=	process.max-file-descriptor=(basic,10000,deny)
SMF_PROJECT_DESC.tomcat=	Tomcat service
SMF_PROJECT_GROUP.tomcat=	tomcat
SMF_PROJECT_USER.tomcat=	tomcat

SMF_PROJECT.apache=		www
SMF_PROJECT.nginx=		www
SMF_PROJECT_ATTRS.www=		process.max-file-descriptor=(basic,10000,deny)
SMF_PROJECT_DESC.www=		Web service
SMF_PROJECT_GROUP.www=		www
SMF_PROJECT_USER.www=		www
