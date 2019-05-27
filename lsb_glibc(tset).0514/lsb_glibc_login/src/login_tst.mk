CFLAGS-grantpt.c = -DLIBEXECDIR='"$(libexecdir)"'
CFLAGS-getpt.c = -fexceptions
CFLAGS-pt_chown.c = $(pt_chown-cflags)
LDFLAGS-pt_chown = -Wl,-z,now
tests := tst-utmp tst-utmpx tst-grantpt tst-ptsname tst-getlogin
