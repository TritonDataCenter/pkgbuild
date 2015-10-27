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

# Use native Xorg, except libXft (XXX: forgot why, upstream?).
#PREFER_PKGSRC=	libXft
X11_TYPE=	modular
