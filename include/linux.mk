#
# Additional mk.conf settings specific to Linux.
#

# Packages which currently hang the build
.if !empty(PKGPATH:Mdevel/openocd) \
 || !empty(PKGPATH:Mlang/gcc3-c++) \
 || !empty(PKGPATH:Mgraphics/rayshade)
NOT_FOR_BULK_PLATFORM=	Linux-*-*
.endif

# Fix GCC builds
MULTILIB_SUPPORTED=	no

#
# The native GCC on EL6 (4.4.x) and EL7 (4.8.x) cannot build lang/gcc49 nor
# lang/gcc5 due to inlining bugs, so if GCC_REQD is set to a higher version
# than native then bump up to 7.x which works fine.
#
.if (!empty(PKGBUILD:Mel6*) && !empty(GCC_REQD:M4.[5-9]*)) \
 || (!empty(PKGBUILD:Mel7*) && !empty(GCC_REQD:M4.9*)) \
 || !empty(GCC_REQD:M[56]*)
GCC_REQD+=		7
USE_PKGSRC_GCC_RUNTIME=	yes
.endif

# Work around broken libgcc handling
PKG_DEFAULT_OPTIONS+=	always-libgcc

# XXX: Fix properly upstream.  Native binutils too old.
.if ${PKGBUILD} == "el6-trunk-pbulk64" && !empty(PKGPATH:Mlang/nodejs)
CONFIGURE_ARGS+=	--openssl-no-asm
.endif

# Use native Xorg, except libXft (XXX: forgot why, upstream?).
#PREFER_PKGSRC=	libXft
X11_TYPE=	modular
