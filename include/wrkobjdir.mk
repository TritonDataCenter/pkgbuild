#
# For most build hosts we try to put work areas in tmpfs where possible to
# reduce I/O and speed things up.  The packages listed below are known to be
# large and can fill WRKOBJDIR, so we use a known disk-backed location.
#

.if !empty(PKGPATH:Maudio/musescore) \
 || !empty(PKGPATH:Mcross/*gcc*) \
 || !empty(PKGPATH:Mdatabases/mariadb55-server) \
 || !empty(PKGPATH:Mdatabases/mongodb) \
 || !empty(PKGPATH:Mdatabases/prometheus) \
 || !empty(PKGPATH:Mdevel/xulrunner*) \
 || !empty(PKGPATH:Memulators/mame) \
 || !empty(PKGPATH:Memulators/qemu) \
 || !empty(PKGPATH:Mfonts/noto-ttf) \
 || !empty(PKGPATH:Mgames/flightgear*) \
 || !empty(PKGPATH:Mgeography/proj) \
 || !empty(PKGPATH:Mgraphics/tesseract) \
 || !empty(PKGPATH:Mham/gnuradio-core) \
 || !empty(PKGPATH:Mjoyent/mariadb10-server) \
 || !empty(PKGPATH:Mlang/clang*) \
 || !empty(PKGPATH:Mlang/gcc*) \
 || !empty(PKGPATH:Mlang/ghc*) \
 || !empty(PKGPATH:Mlang/llvm) \
 || !empty(PKGPATH:Mlang/mercury) \
 || !empty(PKGPATH:Mlang/mono*) \
 || !empty(PKGPATH:Mlang/nodejs*) \
 || !empty(PKGPATH:Mlang/rust) \
 || !empty(PKGPATH:Mmail/thunderbird*) \
 || !empty(PKGPATH:Mnet/kubectl) \
 || !empty(PKGPATH:Mnet/rclone) \
 || !empty(PKGPATH:Mnet/terraform) \
 || !empty(PKGPATH:Msecurity/trufflehog) \
 || !empty(PKGPATH:Msecurity/vault) \
 || !empty(PKGPATH:Msysutils/consul) \
 || !empty(PKGPATH:Msysutils/restic) \
 || !empty(PKGPATH:Mwip/ghc) \
 || !empty(PKGPATH:Mwip/rust) \
 || !empty(PKGPATH:Mwww/firefox) \
 || !empty(PKGPATH:Mwww/firefox??) \
 || !empty(PKGPATH:Mwww/grafana) \
 || !empty(PKGPATH:Mwww/hugo) \
 || !empty(PKGPATH:Mwww/seamonkey) \
 || !empty(PKGPATH:Mwww/webkit*-gtk*) \
 || !empty(PKGPATH:Mx11/kdelibs4) \
 || !empty(PKGPATH:Mx11/qt4-libs) \
 || !empty(PKGPATH:Mx11/qt5-qtwebkit)
WRKOBJDIR=		${WRKOBJDIR_DISK}
.endif
