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
TOOLS_PLATFORM.patch=   ${TOOLS_BASEDIR}/bin/nbpatch

#
# Use binutils from external tools which are not provided by the platform.
#
# In newer releases we add TOOLS_BASEDIR/bin to PATH as it helps to avoid
# hardcoded paths embedding into binaries.
#
.if !empty(PKGBUILD:M201?Q?-*) || !empty(PKGBUILD:M2020Q[123]-*)
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
.if !empty(PKGPATH:Mdevel/binutils) || \
    !empty(PKGPATH:Mjoyent/gcc*) || \
    !empty(PKGPATH:Mlang/gcc*)
TOOLS_PLATFORM.flex=	${TOOLS_BASEDIR}/bin/flex
TOOLS_PLATFORM.m4=	${TOOLS_BASEDIR}/bin/gm4
TOOLS_PLATFORM.makeinfo=${TOOLS_BASEDIR}/bin/makeinfo
TOOLS_PLATFORM.perl=	${TOOLS_BASEDIR}/bin/perl
TOOLS_PLATFORM.xz=	${TOOLS_BASEDIR}/bin/xz
TOOLS_PLATFORM.xzcat=	${TOOLS_BASEDIR}/bin/xzcat
.endif

#
# We need to ensure that libtool can be built with the pkgsrc gcc so that the
# correct library paths are encoded, and to do that we need to build binutils
# (a gcc dependency) with an external libtool.   XXX: requires pkgsrc patch.
#
.if !empty(PKGPATH:Mdevel/binutils)
PKG_LIBTOOL=		${TOOLS_BASEDIR}/bin/libtool
PKG_SHLIBTOOL=		${TOOLS_BASEDIR}/bin/shlibtool
.endif

#
# Use ctfconvert from tools so that we can use it for all packages and avoid
# bootstrap issues.  Ignored for branches which don't support PKGSRC_USE_CTF.
# We also need to configure gstrip for STRIP_DEBUG.
#
TOOLS_PLATFORM.ctfconvert=	${TOOLS_BASEDIR}/onbld/bin/i386/ctfconvert-altexec
TOOLS_PLATFORM.gstrip=		${TOOLS_BASEDIR}/bin/gstrip

#
# rpcgen isn't always available as it requires smartos-build-tools, but if a
# package is calling rpcgen then it is going to fail anyway and this makes it
# easier to find.
#
TOOLS_PATH.rpcgen=		${TOOLS_BASEDIR}/bin/rpcgen

#
# This is a hack, sorry.  Just need an easy way to make this path configurable
# for now rather than hardcoding it into packages.  This is a custom build of
# elfedit with patches to work around segfaults in /usr/bin/elfedit.
#
TOOLS_PATH.elfedit=		/nfs/pkgsrc/bin/elfedit
