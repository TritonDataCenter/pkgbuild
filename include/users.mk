#
# Statically allocated pkgsrc uids/gids.
#
# New entries should be appended at the bottom with decreasing ids.
#
# Users and groups are assigned ids even if they may already exist in the
# platform or are left unused by pkgsrc, to allow for future use.
#
PKG_UID._milter=	998
PKG_GID._milter=	998
#
PKG_UID._ntp=		997
PKG_GID._ntp=		997
#
PKG_UID._prelude=	996
PKG_GID._prelude=	996
#
PKG_UID._spamd=		995
PKG_GID._spamd=		995
#
PKG_UID.alias=		994
PKG_GID.alias=		994
#
PKG_UID.amandabackup=	993
PKG_GID.amandabackup=	993
#
PKG_UID.anope=		992
PKG_GID.anope=		992
#
PKG_UID.asterisk=	991
PKG_GID.asterisk=	991
#
PKG_UID.atheme=		990
PKG_GID.atheme=		990
#
PKG_UID.avahi=		989
PKG_GID.avahi=		989
#
PKG_UID.bacula=		988
PKG_GID.bacula=		988
#
PKG_UID.bacula-dir=	987
PKG_GID.bacula-dir=	987
#
PKG_UID.bitlbee=	986
PKG_GID.bitlbee=	986
#
PKG_UID.cacti=		985
PKG_GID.cacti=		985
#
PKG_UID.cassandra=	984
PKG_GID.cassandra=	984
#
.if empty(PKGBUILD:Mosx-*)
PKG_UID.clamav=		983	# osx _clamav user has clamav alias
PKG_GID.clamav=		983
.endif
#
PKG_UID.cntlm=		982
PKG_GID.cntlm=		982
#
PKG_UID.couchdb=	981
PKG_GID.couchdb=	981
#
PKG_UID.courier=	980
PKG_GID.courier=	980
#
PKG_UID.cvmlog=		979
PKG_GID.cvmlog=		979
#
PKG_UID.cvsd=		978
PKG_GID.cvsd=		978
#
PKG_UID.cyrus=		977
PKG_GID.cyrus=		977
#
#PKG_UID.daemon=	976	# platform uid=1
#PKG_GID.daemon=	976	# platform gid=12
#
PKG_UID.dansgrdn=	975
PKG_GID.dansgrdn=	975
#
PKG_UID.dbus=		974
PKG_GID.dbus=		974
#
PKG_UID.dcc=		973
PKG_GID.dcc=		973
#
PKG_UID.defang=		972
PKG_GID.defang=		972
#
PKG_UID.dialer=		971
.if empty(PKGBUILD:Mosx-*)
PKG_GID.dialer=		971	# osx _dialer group has dialer alias
.endif
#
PKG_UID.dictd=		970
PKG_GID.dictd=		970
#
PKG_UID.dirmngr=	969
PKG_GID.dirmngr=	969
#
PKG_UID.distcc=		968
PKG_GID.distcc=		968
#
PKG_UID.djbdns=		967
PKG_GID.djbdns=		967
#
PKG_UID.dkim=		966
PKG_GID.dkim=		966
#
PKG_UID.dnslog=		965
PKG_GID.dnslog=		965
#
PKG_UID.dovecot=	964
PKG_GID.dovecot=	964
#
PKG_UID.dovenull=	963
PKG_GID.dovenull=	963
#
PKG_UID.dspam=		962
PKG_GID.dspam=		962
#
PKG_UID.ejabberd=	961
PKG_GID.ejabberd=	961
#
PKG_UID.f-prot=		960
PKG_GID.f-prot=		960
#
PKG_UID.fax=		959
PKG_GID.fax=		959
#
PKG_UID.fml=		958
PKG_GID.fml=		958
#
PKG_UID.freepops=	957
PKG_GID.freepops=	957
#
PKG_UID.gale=		956
PKG_GID.gale=		956
#
PKG_UID.games=		955
PKG_GID.games=		955
#
PKG_UID.gld=		954
PKG_GID.gld=		954
#
PKG_UID.gnats=		953
PKG_GID.gnats=		953
#
PKG_UID.gopher=		952
PKG_GID.gopher=		952
#
PKG_UID.haldaemon=	951
PKG_GID.haldaemon=	951
#
PKG_UID.howl=		950
PKG_GID.howl=		950
#
PKG_UID.icecast=	949
PKG_GID.icecast=	949
#
PKG_UID.imapproxy=	948
PKG_GID.imapproxy=	948
#
PKG_UID.inspircd=	947
PKG_GID.inspircd=	947
#
PKG_UID.irc=		946
PKG_GID.irc=		946
#
PKG_UID.ircd=		945
PKG_GID.ircd=		945
#
PKG_UID.irrd=		944
PKG_GID.irrd=		944
#
PKG_UID.jabberd=	943
PKG_GID.jabberd=	943
#
PKG_UID.jetty=		942
PKG_GID.jetty=		942
#
PKG_UID.jserver=	941
PKG_GID.jserver=	941
#
PKG_UID.kismet=		940
PKG_GID.kismet=		940
#
PKG_UID.lambdamoo=	939
PKG_GID.lambdamoo=	939
#
PKG_UID.ldap=		938
PKG_GID.ldap=		938
#
.if empty(PKGBUILD:Mosx-*)
PKG_UID.lp=		937	# osx _lp user has lp alias
PKG_GID.lp=		937
.endif
#
PKG_UID.lshellg=	936
PKG_GID.lshellg=	936
#
PKG_UID.mail=		935
#PKG_GID.mail=		935	# platform gid=6
#
PKG_UID.maildrop=	934
PKG_GID.maildrop=	934
#
.if empty(PKGBUILD:Mosx-*)
PKG_UID.mailman=	933	# osx _mailman user has mailman alias
PKG_GID.mailman=	933
.endif
#
PKG_UID.majordom=	932
PKG_GID.majordom=	932
#
PKG_UID.mediatomb=	931
PKG_GID.mediatomb=	931
#
PKG_UID.memcached=	930
PKG_GID.memcached=	930
#
PKG_UID.mldonkey=	929
PKG_GID.mldonkey=	929
#
PKG_UID.monotone=	928
PKG_GID.monotone=	928
#
PKG_UID.mtdaapd=	927
PKG_GID.mtdaapd=	927
#
PKG_UID.munin=		926
PKG_GID.munin=		926
#
PKG_UID.mydns=		925
PKG_GID.mydns=		925
#
.if empty(PKGBUILD:Mosx-*)
PKG_UID.mysql=		924	# osx _mysql user has mysql alias
PKG_GID.mysql=		924
.endif
#
PKG_UID.nagios=		923
PKG_GID.nagios=		923
#
PKG_UID.named=		922
PKG_GID.named=		922
#
PKG_UID.netdisco=	921
PKG_GID.netdisco=	921
#
PKG_UID.network=	920
PKG_GID.network=	920
#
PKG_UID.news=		919
PKG_GID.news=		919
#
PKG_UID.nginx=		918
PKG_GID.nginx=		918
#
.if empty(PKGBUILD:Mosx-*)
PKG_UID.nobody=		917
PKG_GID.nobody=		917
.endif
#
PKG_UID.nofiles=	916
PKG_GID.nofiles=	916
#
PKG_UID.nsd=		915
PKG_GID.nsd=		915
#
PKG_UID.nullmail=	914
PKG_GID.nullmail=	914
#
PKG_UID.nut=		913
PKG_GID.nut=		913
#
PKG_UID.opendkim=	912
PKG_GID.opendkim=	912
#
PKG_UID.opendnssec=	911
PKG_GID.opendnssec=	911
#
PKG_UID.openvpn=	910
PKG_GID.openvpn=	910
#
PKG_UID.p4admin=	909
PKG_GID.p4admin=	909
#
PKG_UID.perforce=	908
PKG_GID.perforce=	908
#
PKG_UID.postgres=	907	# pkgsrc default is 'pgsql'
PKG_GID.postgres=	907	# pkgsrc default is 'pgsql'
#
PKG_UID.pks=		906
PKG_GID.pks=		906
#
PKG_UID.polkit=		905
PKG_GID.polkit=		905
#
PKG_UID.polw=		904
PKG_GID.polw=		904
#
PKG_UID.pop=		903
PKG_GID.pop=		903
#
PKG_UID.popa3d=		902
PKG_GID.popa3d=		902
#
.if empty(PKGBUILD:Mosx-*)
PKG_UID.postfix=	901	# osx _postfix user has postfix alias
PKG_GID.postfix=	901
.endif
#
PKG_UID.postgrey=	900
PKG_GID.postgrey=	900
#
PKG_UID.prayer=		899
PKG_GID.prayer=		899
#
PKG_UID.prewikka=	898
PKG_GID.prewikka=	898
#
PKG_UID.privoxy=	897
PKG_GID.privoxy=	897
#
PKG_UID.prosody=	896
PKG_GID.prosody=	896
#
PKG_UID.pulse=		895
PKG_GID.pulse=		895
#
PKG_UID.pulseacc=	894
PKG_GID.pulseacc=	894
#
PKG_UID.pulsert=	893
PKG_GID.pulsert=	893
#
PKG_UID.qmail=		892
PKG_GID.qmail=		892
#
PKG_UID.qtss=		891
PKG_GID.qtss=		891
#
PKG_UID.quagga=		890
PKG_GID.quagga=		890
#
PKG_UID.quickml=	889
PKG_GID.quickml=	889
#
PKG_UID.rabbitmq=	888
PKG_GID.rabbitmq=	888
#
PKG_UID.radius=		887
PKG_GID.radius=		887
#
PKG_UID.rancid=		886
PKG_GID.rancid=		886
#
PKG_UID.rbldns=		885
PKG_GID.rbldns=		885
#
#PKG_UID.root=		884	# platform uid=0
#PKG_GID.root=		884	# platform gid=0
#
PKG_UID.rt=		883
PKG_GID.rt=		883
#
PKG_UID.screws=		882
PKG_GID.screws=		882
#
PKG_UID.services=	881
PKG_GID.services=	881
#
PKG_UID.sfs=		880
PKG_GID.sfs=		880
#
PKG_UID.sgeadmin=	879
PKG_GID.sgeadmin=	879
#
PKG_UID.silcd=		878
PKG_GID.silcd=		878
#
PKG_UID.slapd=		877
PKG_GID.slapd=		877
#
PKG_UID.slimuser=	876
PKG_GID.slimuser=	876
#
PKG_UID.slurm=		875
PKG_GID.slurm=		875
#
#PKG_UID.smmsp=		874	# platform uid=25
#PKG_GID.smmsp=		874	# platform gid=25
#
PKG_UID.snort=		873
PKG_GID.snort=		873
#
PKG_UID.sogo=		872
PKG_GID.sogo=		872
#
PKG_UID.spread=		871
PKG_GID.spread=		871
#
PKG_UID.sqlgrey=	870
PKG_GID.sqlgrey=	870
#
PKG_UID.squid=		869
PKG_GID.squid=		869
#
.if empty(PKGBUILD:Mosx-*)
PKG_UID.sshd=		868	# osx _sshd user has sshd alias
PKG_GID.sshd=		868
.endif
#
PKG_UID.stb-admin=	867
PKG_GID.stb-admin=	867
#
PKG_UID.stompserver=	866
PKG_GID.stompserver=	866
#
PKG_UID.stunnel=	865
PKG_GID.stunnel=	865
#
PKG_UID.sympa=		864
PKG_GID.sympa=		864
#
PKG_UID.sysadmin=	863
PKG_GID.sysadmin=	863
#
PKG_UID.sysbuild=	862
PKG_GID.sysbuild=	862
#
PKG_UID.tahoes=		861
PKG_GID.tahoes=		861
#
PKG_UID.teamspeak=	860
PKG_GID.teamspeak=	860
#
PKG_UID.tinyproxy=	859
PKG_GID.tinyproxy=	859
#
PKG_UID.tofmipd=	858
PKG_GID.tofmipd=	858
#
PKG_UID.tomcat=		857
PKG_GID.tomcat=		857
#
PKG_UID.tor=		856
PKG_GID.tor=		856
#
PKG_UID.ubs=		855
PKG_GID.ubs=		855
#
PKG_UID.uircd=		854
PKG_GID.uircd=		854
#
PKG_UID.unbound=	853
PKG_GID.unbound=	853
#
#PKG_UID.uucp=		852	# platform uid=5
#PKG_GID.uucp=		852	# platform gid=5
#
PKG_UID.varnish=	851
PKG_GID.varnish=	851
#
PKG_UID.amavis=		850	# pkgsrc default is 'vscan'
PKG_GID.amavis=		850	# pkgsrc default is 'vscan'
#
PKG_UID.vsftpd=		849
PKG_GID.vsftpd=		849
#
PKG_UID.wnn=		848
PKG_GID.wnn=		848
#
.if empty(PKGBUILD:Mosx-*)
PKG_UID.www=		847	# osx _www user has 'www' alias'
PKG_GID.www=		847
.endif
#
PKG_UID.xymon=		846
PKG_GID.xymon=		846
#
PKG_UID.redis=		845
PKG_GID.redis=		845
#
PKG_UID.stingray=	844
PKG_GID.stingray=	844
#
PKG_UID.pgpool=		843
#PKG_GID.pgpool=	843 # using pgsql instead
#
PKG_UID.enstratus=	842
PKG_GID.enstratus=	842
#
PKG_UID.hadoop=		841
PKG_GID.hadoop=		841
#
PKG_UID.hdfs=		840
PKG_GID.hdfs=		840
#
PKG_UID.hive=		839
PKG_GID.hive=		839
#
PKG_UID.pig=		838
PKG_GID.pig=		838
#
PKG_UID.hbase=		837
PKG_GID.hbase=		837
#
PKG_UID.templeton=	836
PKG_GID.templeton=	836
#
PKG_UID.virtuoso=	835
PKG_GID.virtuoso=	835
#
PKG_UID.stud=		834
PKG_GID.stud=		834
#
PKG_UID.icinga=		833
PKG_GID.icinga=		833
#
PKG_UID.sphinx=		832
PKG_GID.sphinx=		832
#
PKG_UID.graphite=	831
PKG_GID.graphite=	831
#
PKG_UID.zookeeper=	830
PKG_GID.zookeeper=	830
#
PKG_UID.mongodb=	829
PKG_GID.mongodb=	829
#
PKG_UID.axfrdns=	828
PKG_GID.axfrdns=	828
#
PKG_UID.dnscache=	827
PKG_GID.dnscache=	827
#
PKG_UID.tinydns=	826
PKG_GID.tinydns=	826
#
PKG_UID.nutcrack=	825
PKG_GID.nutcrack=	825
#
PKG_UID.bacula-sd=	824
PKG_GID.bacula-sd=	824
#
PKG_UID.elastic=	823
PKG_GID.elastic=	823
#
PKG_UID.elasticsearch=	823
PKG_GID.elasticsearch=	823
#
PKG_UID.steelapp=	822
PKG_GID.steelapp=	822
#
PKG_UID.ossec=		821
PKG_UID.ossecr=		820
PKG_UID.ossecm=		819
PKG_GID.ossec=		821
#
PKG_UID._lldpd=		818
PKG_GID._lldpd=		818
#
PKG_UID.barman=		817
PKG_GID.barman=		817
#
PKG_UID.collectd=	816
PKG_GID.collectd=	816
#
PKG_UID.gnarwl=		815
PKG_GID.gnarwl=		815
#
PKG_UID.neo4j=		814
PKG_GID.neo4j=		814
#
PKG_UID.psybnc=		813
PKG_GID.psybnc=		813
#
PKG_UID.dnsmasq=	812
PKG_GID.dnsmasq=	812
#
PKG_UID.sqlrelay=	811
PKG_GID.sqlrelay=	811
#
PKG_UID.znc=		810
PKG_GID.znc=		810
#
PKG_UID.pgbounce=	809
PKG_GID.pgbounce=	809
#
PKG_UID.zabbix=		808
PKG_GID.zabbix=		808
#
PKG_UID.rspamd=		807
PKG_GID.rspamd=		807
#
PKG_UID.influxdb=	806
PKG_GID.influxdb=	806
