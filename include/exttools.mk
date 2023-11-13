#
# This mk fragment ensures external tools are used to avoid circular
# dependencies and other issues.  Mostly SmartOS-specific currently.
#

#
# Always pull in nbpatch as a bootstrap dependency.  This allows us to enable
# the pbulk reuse_scan_results option, as without doing this pbulk will fail
# if a package adds patches where previously it didn't have any due to the
# missing dependency on nbpatch.
#
TOOLS_PLATFORM.patch=	${TOOLS_BASEDIR}/bin/nbpatch

#
# Use binutils from external tools which are not provided by the platform.
#
# In newer releases we add TOOLS_BASEDIR/bin to PATH as it helps to avoid
# hardcoded paths embedding into binaries.
#
.if ${PKGBUILD:M201?Q?-*} || ${PKGBUILD:M2020Q[123]-*}
.  for tool in as objcopy objdump ranlib readelf
${tool:tu}=		${TOOLS_BASEDIR}/bin/g${tool}
TOOLS_PATH.${tool}=	${TOOLS_BASEDIR}/bin/g${tool}
TOOLS_CREATE+=		${tool}
.  endfor
.endif

#
# Avoid circular dependencies by using external tools for gcc, where the tool
# itself depends upon gcc when using USE_PKGSRC_GCC_RUNTIME.
#
.if ${PKGPATH:Mdevel/binutils} || ${PKGPATH:Mextra/gcc*} || \
    ${PKGPATH:Mjoyent/gcc*} || ${PKGPATH:Mlang/gcc*}
TOOLS_PLATFORM.flex=		${TOOLS_BASEDIR}/bin/flex
TOOLS_PLATFORM.m4=		${TOOLS_BASEDIR}/bin/gm4
TOOLS_PLATFORM.makeinfo=	${TOOLS_BASEDIR}/bin/makeinfo
TOOLS_PLATFORM.perl=		${TOOLS_BASEDIR}/bin/perl
TOOLS_PLATFORM.xz=		${TOOLS_BASEDIR}/bin/xz
TOOLS_PLATFORM.xzcat=		${TOOLS_BASEDIR}/bin/xzcat
.endif

#
# We need to ensure that libtool can be built with the pkgsrc gcc so that the
# correct library paths are encoded, and to do that we need to build binutils
# (a gcc dependency) with an external libtool.   XXX: requires pkgsrc patch.
#
.if ${PKGPATH:Mdevel/binutils}
PKG_LIBTOOL=		${TOOLS_BASEDIR}/bin/libtool
PKG_SHLIBTOOL=		${TOOLS_BASEDIR}/bin/shlibtool
.endif

#
# Use ctfconvert from tools so that we can use it for all packages and avoid
# bootstrap issues.  Ignored for branches which don't support PKGSRC_USE_CTF.
# We also need to configure gstrip for STRIP_DEBUG.
#
# Builds of 2020Q4 and earlier used patched tools built separately, builds on
# 20210826 platforms use newer tools from that platform version.
#
.if ${PKGBUILD:M201?Q?-*} || ${PKGBUILD:M2020Q?-*} || ${PKGBUILD:M2021Q4-tools}
TOOLS_PLATFORM.ctfconvert=	${TOOLS_BASEDIR}/onbld/bin/i386/ctfconvert-altexec
TOOLS_ARGS.ctfconvert=		-i
.else
TOOLS_PLATFORM.ctfconvert=	${TOOLS_BASEDIR}/onbld/bin/i386/ctfconvert
TOOLS_ARGS.ctfconvert=		-m
.endif

#
# Use a wrapper script for STRIP_DBG so that native illumos strip can be used,
# as it currently does not support -o that pkgsrc expects.
#
# Older releases used GNU strip.
#
.if ${PKGBUILD:M201[0-9]Q*} || ${PKGBUILD:M202[12]Q*}
TOOLS_PLATFORM.gstrip=		${TOOLS_BASEDIR}/bin/gstrip
.else
TOOLS_CREATE+=			strip-dbg-illumos
TOOLS_PATH.strip-dbg-illumos=	${PKGBUILD_BASEDIR}/scripts/strip-dbg-illumos
STRIP_DBG=			strip-dbg-illumos
.endif

#
# rpcgen isn't always available as it requires smartos-build-tools, but if a
# package is calling rpcgen then it is going to fail anyway and this makes it
# easier to find.
#
TOOLS_PATH.rpcgen=		${TOOLS_BASEDIR}/bin/rpcgen
