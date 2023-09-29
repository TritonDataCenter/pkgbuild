#
# Additional packages to build via the USER_ADDITIONAL_PKGS mechanism.
#
# This is for builds which by default build all packages but wish to add extra
# packages such as those from pkgsrc-wip or pkgsrc-joyent.
#

#
# Additional packages for branch builds.  Pull in all additional packages
# currently defined in the branch-specific pkglist file.  Only called by
# pbulk via the top level Makefile.
#
.if defined(PKGSRCTOP)
.  if exists(${PKGBUILD_BASEDIR}/pkglist/${PKGBUILD})
EXTRAPKGS!=	/usr/bin/egrep '^[A-Za-z]' ${PKGBUILD_BASEDIR}/pkglist/${PKGBUILD} || true
.  elif exists(${PKGBUILD_BASEDIR}/pkglist/${BRANCH})
EXTRAPKGS!=	/usr/bin/egrep '^[A-Za-z]' ${PKGBUILD_BASEDIR}/pkglist/${BRANCH} || true
.  endif
.  if defined(EXTRAPKGS)
.    for pkg in ${EXTRAPKGS}
USER_ADDITIONAL_PKGS+=	${pkg}
.    endfor
.  endif
.endif
