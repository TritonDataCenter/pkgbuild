#
# Additional mk.conf settings specific to Linux.
#

# Fix GCC builds
MULTILIB_SUPPORTED=	no

#
# The native GCC on EL6 (4.4.x) and EL7 (4.8.x) cannot build lang/gcc49 nor
# lang/gcc5 due to inlining bugs, so if GCC_REQD is set to a higher version
# than native then bump up to 7.x which works fine.
#
# This doesn't work for every package, as if bsd.prefs.mk is included prior
# to GCC_REQD being set then the tests below will always fail, so we need to
# also force certain packages.
#
.if ${PKGBUILD:Mel7*}
.  if ${GCC_REQD:U:M4.9*} || ${GCC_REQD:U:M[56]*} || ${PKGPATH:Mlang/nodejs*}
GCC_REQD+=		7
USE_PKGSRC_GCC_RUNTIME=	yes
.  endif
.endif

# Work around broken libgcc handling
PKG_DEFAULT_OPTIONS+=	always-libgcc

# Use native Xorg, except libXft (XXX: forgot why, upstream?).
#PREFER_PKGSRC=	libXft
X11_TYPE=	modular
