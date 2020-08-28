#
# Additional mk.conf settings specific to NetBSD.
#

#
# Builds that currently hang the build.
#
.if !empty(PKGPATH:Mgames/craft)
NOT_FOR_BULK_PLATFORM=	NetBSD-*-*
.endif

#
# Builds too big for tmpfs.
#
.if !empty(PKGPATH:Mgames/flightgear*)
WRKOBJDIR=	/Users/pbulk/build-disk
.endif
