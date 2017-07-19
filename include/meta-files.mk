#
# Pull in override files from our meta/ area.
#

#
# Pull in override INSTALL files.
#
.if exists(${PKGBUILD_BASEDIR}/meta/${PKGPATH}/INSTALL)
INSTALL_TEMPLATES+=	${PKGBUILD_BASEDIR}/meta/${PKGPATH}/INSTALL
.endif

#
# Pull in logadm INSTALL files (to be removed when logadm support is
# added into pkgsrc).
#
.if exists(${PKGBUILD_BASEDIR}/meta/${PKGPATH}/INSTALL.logadm)
INSTALL_TEMPLATES+=	${PKGBUILD_BASEDIR}/meta/${PKGPATH}/INSTALL.logadm
.endif
