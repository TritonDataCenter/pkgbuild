#
# Pull in override files from our meta/ area.
#

#
# Avoid gratuitous copies when they can be shared.
#
.if !empty(PKGPATH:M*/postgresql*server)
PKGBUILD_META_DIR=	${PKGBUILD_BASEDIR}/meta/common/postgresql-server
.elif !empty(PKGPATH:M*/mysql5[156]-server)
PKGBUILD_META_DIR=	${PKGBUILD_BASEDIR}/meta/common/mysql5-server
.elif !empty(PKGPATH:M*/mysql57-server) || !empty(PKGPATH:M*/mysql8*-server)
PKGBUILD_META_DIR=	${PKGBUILD_BASEDIR}/meta/common/mysql8-server
.else
PKGBUILD_META_DIR=	${PKGBUILD_BASEDIR}/meta/${PKGPATH}
.endif

#
# Pull in override INSTALL files.
#
.if exists(${PKGBUILD_META_DIR}/INSTALL)
INSTALL_TEMPLATES+=	${PKGBUILD_META_DIR}/INSTALL
.endif

#
# Pull in logadm INSTALL files (to be removed when logadm support is
# added into pkgsrc).
#
.if exists(${PKGBUILD_META_DIR}/INSTALL.logadm)
INSTALL_TEMPLATES+=	${PKGBUILD_META_DIR}/INSTALL.logadm
.endif
