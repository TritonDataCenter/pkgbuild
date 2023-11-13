#
# For most build hosts we try to put work areas in tmpfs where possible to
# reduce I/O and speed things up.  The packages listed below are known to be
# large and can fill WRKOBJDIR, so we use a known disk-backed location.
#

.if ${PKGPATH:Maudio/musescore} \
 || ${PKGPATH:Mcross/*gcc*} \
 || ${PKGPATH:Mdatabases/mariadb55-server} \
 || ${PKGPATH:Mdatabases/mongodb} \
 || ${PKGPATH:Mdatabases/prometheus} \
 || ${PKGPATH:Mdevel/xulrunner*} \
 || ${PKGPATH:Memulators/mame} \
 || ${PKGPATH:Memulators/qemu} \
 || ${PKGPATH:Mfonts/noto-ttf} \
 || ${PKGPATH:Mgames/flightgear*} \
 || ${PKGPATH:Mgeography/proj} \
 || ${PKGPATH:Mgraphics/tesseract} \
 || ${PKGPATH:Mham/gnuradio-core} \
 || ${PKGPATH:Mjoyent/mariadb10-server} \
 || ${PKGPATH:Mlang/clang*} \
 || ${PKGPATH:Mlang/gcc*} \
 || ${PKGPATH:Mlang/ghc*} \
 || ${PKGPATH:Mlang/llvm} \
 || ${PKGPATH:Mlang/mercury} \
 || ${PKGPATH:Mlang/mono*} \
 || ${PKGPATH:Mlang/nodejs*} \
 || ${PKGPATH:Mlang/rust} \
 || ${PKGPATH:Mmail/thunderbird*} \
 || ${PKGPATH:Mnet/kubectl} \
 || ${PKGPATH:Mnet/rclone} \
 || ${PKGPATH:Mnet/terraform} \
 || ${PKGPATH:Msecurity/trufflehog} \
 || ${PKGPATH:Msecurity/vault} \
 || ${PKGPATH:Msysutils/consul} \
 || ${PKGPATH:Msysutils/restic} \
 || ${PKGPATH:Mwip/ghc} \
 || ${PKGPATH:Mwip/rust} \
 || ${PKGPATH:Mwww/firefox} \
 || ${PKGPATH:Mwww/firefox??} \
 || ${PKGPATH:Mwww/grafana} \
 || ${PKGPATH:Mwww/hugo} \
 || ${PKGPATH:Mwww/seamonkey} \
 || ${PKGPATH:Mwww/webkit*-gtk*} \
 || ${PKGPATH:Mx11/kdelibs4} \
 || ${PKGPATH:Mx11/qt4-libs} \
 || ${PKGPATH:Mx11/qt5-qtwebkit}
WRKOBJDIR=		${WRKOBJDIR_DISK}
.endif
