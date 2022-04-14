#
# Additional mk.conf settings specific to NetBSD.
#

#
# Builds too big for tmpfs.
#
.if !empty(PKGPATH:Mgames/flightgear*)
WRKOBJDIR=	/Users/pbulk/build-disk
.endif
