#
# macOS tools builds aren't published (at least in any meaningful sense).  We
# only need the tools themselves, not any additional features.
#
# These options reduce the number of packages that need to be built by around
# 100, including some heavyweights like lang/rust.
#
PKG_DEFAULT_OPTIONS+=	-cups
PKG_DEFAULT_OPTIONS+=	-fontconfig
PKG_DEFAULT_OPTIONS+=	-groff-docs
PKG_DEFAULT_OPTIONS+=	-x11
