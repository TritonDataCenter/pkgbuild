#
# Pre-computed builtin variables to avoid having to run expensive checks for
# each build.  Whilst these variables are cached by pkgsrc, not everything can
# take advantage of that, and they are expensive to compute the first time.
#
# This file is specific to the 20210826 SmartOS build platform.
#

#
# General variables.
#
OPSYS=				SunOS
OS_VERSION=			5.11
OPSYS_VERSION=			051100

# archivers/bzip2/builtin.mk
H_BZIP2=			__nonexistent__

# archivers/libarchive/builtin.mk
H_ARCHIVE=			__nonexistent__

# archivers/xz/builtin.mk
H_LZMA=				__nonexistent__
H_LZMA_VERSION=			__nonexistent__

# converters/libiconv/builtin.mk
BUILTIN_LIB_FOUND.iconv=	no
H_ICONV=			__nonexistent__
H_GLIBC_ICONV=			__nonexistent__
H_CITRUS_ICONV=			__nonexistent__

# databases/gdbm/builtin.mk
GDBM_H=				__nonexistent__

# devel/editline/builtin.mk
BUILTIN_LIB_FOUND.edit=		no
H_EDITLINE=			__nonexistent__

# devel/gettext-lib/builtin.mk
BUILTIN_LIB_FOUND.intl=		yes
H_GETTEXT=			__nonexistent__
H_GENTOO_GETTEXT=		__nonexistent__
H_NGETTEXT_GETTEXT=		/usr/include/libintl.h
H_OPNSVR5_GETTEXT=		__nonexistent__

# devel/gmp/builtin.mk
H_GMP=				__nonexistent__

# devel/libevent/builtin.mk
H_LIBEVENT=			__nonexistent__
H_LIBEVENTCONFIG=		__nonexistent__

# devel/libexecinfo/builtin.mk
H_EXECINFO=			/usr/include/execinfo.h

# devel/libgetopt/builtin.mk
H_GETOPT=			/usr/include/getopt.h

# devel/libuuid/builtin.mk
BUILTIN_LIB_FOUND.uuid=		yes
H_UUID=				/usr/include/uuid/uuid.h

# devel/ncurses/builtin.mk
# devel/ncursesw/builtin.mk
BUILTIN_LIB_FOUND.ncurses=	no
BUILTIN_LIB_FOUND.ncursesw=	no
H_NCURSES=			__nonexistent__
H_NB_CURSESW=			__nonexistent__
H_NCURSESW=			__nonexistent__
H_CURSES1=			__nonexistent__

# devel/sysexits/builtin.mk
H_SYSEXITS=			/usr/include/sysexits.h

# devel/zlib/builtin.mk
H_ZLIB=				__nonexistent__

# fonts/fontconfig/builtin.mk
H_FONTCONFIG=			__nonexistent__

# mail/libmilter/builtin.mk
BUILTIN_LIB_FOUND.milter=	no
H_LIBMILTER=			/usr/include/libmilter/mfapi.h

# mk/curses.builtin.mk
BUILTIN_LIB_FOUND.curses=	yes
H_CURSES=			/usr/include/curses.h
H_CURSES_CHGAT=			__nonexistent__
H_CURSES_GETSYX=		/usr/include/curses.h
H_CURSES_HALFDELAY=		/usr/include/curses.h
H_CURSES_PUTWIN=		/usr/include/curses.h
H_CURSES_RESIZE_TERM=		__nonexistent__
H_CURSES_RESIZETERM=		__nonexistent__
H_CURSES_RIPOFFLINE=		/usr/include/curses.h
H_CURSES_SET_ESCDELAY=		__nonexistent__
H_CURSES_SYNCOK=		/usr/include/curses.h
H_CURSES_WGETNSTR=		/usr/include/curses.h
H_CURSES_WSYNCUP=		/usr/include/curses.h
H_CURSES_MVWCHGAT=		__nonexistent__
H_CURSES_VW_PRINTW=		__nonexistent__
H_CURSES_GETMOUSE=		/usr/include/curses.h
H_CURSES_WA_NORMAL=		__nonexistent__

# mk/db1.builtin.mk
BUILTIN_LIB_FOUND.db1=		no
BUILTIN_LIB_FOUND.db=		no
H_DB=				__nonexistent__

# mk/dlopen.builtin.mk
BUILTIN_LIB_FOUND.dl=		yes
H_DL=				/usr/include/dlfcn.h

# mk/linux-pam.builtin.mk
H_LINUX_PAM=			__nonexistent__

# mk/oss.builtin.mk
BUILTIN_LIB_FOUND.ossaudio=	no
H_SOUNDCARD=			/usr/include/sys/soundcard.h

# mk/pthread.builtin.mk
BUILTIN_LIB_FOUND.pthread=	yes
BUILTIN_LIB_FOUND.c_r=		yes
BUILTIN_LIB_FOUND.rt=		yes
H_PTHREAD=			/usr/include/pthread.h

# mk/readline.builtin.mk
#  - minus duplicates from devel/editline
BUILTIN_LIB_FOUND.readline=	no
BUILTIN_LIB_FOUND.history=	no
H_READLINE=			__nonexistent__

# mk/solaris-pam.builtin.mk
H_SOLARIS_PAM=			/usr/include/security/pam_appl.h

# mk/termcap.builtin.mk
# mk/terminfo.builtin.mk
#   - minus duplicates from mk/curses.builtin.mk
BUILTIN_LIB_FOUND.terminfo=	no
BUILTIN_LIB_FOUND.termcap=	yes
BUILTIN_LIB_FOUND.termlib=	yes
BUILTIN_LIB_FOUND.tinfo=	no
H_TERM=				/usr/include/term.h
H_TERMCAP=			__nonexistent__
H_TERMLIB=			__nonexistent__

# security/mit-krb5/builtin.mk
BUILTIN_PKG.mit-krb5=		mit-krb5-1.6.3
H_MIT_KRB5=			/usr/include/kerberosv5/krb5.h
SH_KRB5_CONFIG=			/usr/bin/krb5-config

# security/openssl/builtin.mk
BUILTIN_LIB_FOUND.crypto=	yes
BUILTIN_LIB_FOUND.ssl=		yes
H_OPENSSLCONF=			__nonexistent__
H_OPENSSLV=			__nonexistent__

# security/tcp_wrappers/builtin.mk
BUILTIN_LIB_FOUND.wrap=		yes
H_TCP_WRAPPERS=			/usr/include/tcpd.h
