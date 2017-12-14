#
# Rather than attempting to build packages which are known to fail every time
# and slowing down rebuilds, read in a list of known-broken packages and mark
# them as failed.
#
# To generate the lists for each branch, use something like:
#
#  $ awk -F\| '$2 == "failed" {print $1}' \
#      /shared/bulklog/2014Q1/i386/meta/pbuild | sort > pkgfail/2014Q1-i386
#

.if exists(${PKGBUILD_BASEDIR}/pkgfail/${PKGBUILD})
PKGFAILPKGS!=		cat ${PKGBUILD_BASEDIR}/pkgfail/${PKGBUILD}
PKG_FAIL_REASON+=	${"${PKGFAILPKGS:M${PKGNAME}}" != "":?"Known pkgfail for ${PKGBUILD}":}
.endif

#
# Common list of packages we want to explicitly exclude for various reasons.
#
PKGFAIL.lang/ruby=	"Conflicts with pkg_alternatives"

.if defined(PKGFAIL.${PKGPATH})
PKG_FAIL_REASON+=	${PKGFAIL.${PKGPATH}}
.endif
