#
# Additional packages to build via the USER_ADDITIONAL_PKGS mechanism.
#
# This is for builds which by default build all packages but wish to add extra
# packages such as those from pkgsrc-wip or pkgsrc-joyent.
#

#
# Additional packages for branch builds.  Pull in all additional packages
# currently defined in the branch-specific pkglist file.
#
.if exists(${PKGBUILD_BASEDIR}/pkglist/${PKGBUILD})
WIPJOYPKGS!=	egrep '^(joyent|private|wip)' ${PKGBUILD_BASEDIR}/pkglist/${PKGBUILD}
.elif exists(${PKGBUILD_BASEDIR}/pkglist/${BRANCH})
WIPJOYPKGS!=	egrep '^(joyent|private|wip)' ${PKGBUILD_BASEDIR}/pkglist/${BRANCH}
.endif
.if defined(WIPJOYPKGS)
.  for pkg in ${WIPJOYPKGS}
USER_ADDITIONAL_PKGS+=	${pkg}
.  endfor
.endif
