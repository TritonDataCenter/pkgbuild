#
# Add -lumem by default, except for packages where it causes issues.
#
.if ! ${PKGPATH:Mdevel/SOPE*} \
 && ! ${PKGPATH:Mdevel/gnustep-base} \
 && ! ${PKGPATH:Mdevel/gperftools} \
 && ! ${PKGPATH:Mdevel/ncurses} \
 && ! ${PKGPATH:Mdevel/valgrind} \
 && ! ${PKGPATH:Meditors/emacs*} \
 && ! ${PKGPATH:Mjoyent/haskell-platform} \
 && ! ${PKGPATH:Mlang/go*} \
 && ! ${PKGPATH:Mnet/syncthing} \
 && ! ${PKGPATH:Msecurity/aide*} \
 && ! ${PKGPATH:Mwm/xmonad} \
 && ! ${PKGPATH:Mwww/grafana} \
 && ! ${PKGPATH:Mx11/gnustep-back} \
 && ! ${PKGPATH:M*/beats} \
 && ! ${PKGPATH:M*/consul} \
 && ! ${PKGPATH:M*/ghc*} \
 && ! ${PKGPATH:M*/hs-*} \
 && ! ${PKGPATH:M*/mongo-tools}
_WRAP_EXTRA_LIBS.CC+=	-lumem
_WRAP_EXTRA_LIBS.CXX+=	-lumem
_WRAP_EXTRA_LIBS.LD+=	-lumem
CWRAPPERS_LDADD.cc+=	-lumem
CWRAPPERS_LDADD.cxx+=	-lumem
CWRAPPERS_LDADD.ld+=	-lumem
.endif
