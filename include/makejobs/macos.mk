#
# Manual list of packages that would benefit from a modest bump in
# MAKE_JOBS from the default of 1.  Keep this short and prioritised
# to avoid thrashing.
#
# Comment is number of deps * how long it took at MAKE_JOBS=1.
#
PKG_MAKE_JOBS.cross/avr-gcc=		2	#    4 * 5687
PKG_MAKE_JOBS.devel/py-llvmlite=	2	#    3 * 3600 (avg)
PKG_MAKE_JOBS.lang/gcc12=		2	#  916 * 1829
PKG_MAKE_JOBS.lang/llvm=		3	#  568 * 4111
PKG_MAKE_JOBS.lang/nodejs=		2	#   83 * 3375
PKG_MAKE_JOBS.lang/qore=		2	#   17 * 2706
PKG_MAKE_JOBS.lang/rust=		3	# 5160 * 6568
