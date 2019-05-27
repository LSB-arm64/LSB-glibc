CFLAGS-select.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-tsearch.c = $(uses-callbacks)
CFLAGS-lsearch.c = $(uses-callbacks)
CFLAGS-pselect.c = -fexceptions
CFLAGS-readv.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-writev.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-usleep.c = -fexceptions
CFLAGS-syslog.c = -fexceptions
CFLAGS-error.c = -fexceptions
CFLAGS-getpass.c = -fexceptions
CFLAGS-mkstemp.c = -fexceptions
CFLAGS-mkstemp64.c = -fexceptions
CFLAGS-getsysstats.c = -fexceptions
CFLAGS-getusershell.c = -fexceptions
CFLAGS-err.c = -fexceptions
CFLAGS-tst-tsearch.c = $(stack-align-test-flags)
$(objpfx)libg.a: $(dep-dummy-lib); $(make-dummy-lib)
$(objpfx)tst-tsearch: $(libm)
tst-error1-ENV = MALLOC_TRACE=$(objpfx)tst-error1.mtrace
tst-error1-ARGS = $(objpfx)tst-error1.out
$(objpfx)tst-error1-mem.out: $(objpfx)tst-error1.out
tests := tst-dirname tst-tsearch tst-fdset tst-efgcvt tst-mntent tst-hsearch 	 tst-error1 tst-pselect tst-insremque tst-mntent2 bug-hsearch1 	 tst-mntent-blank-corrupt tst-mntent-blank-passno bug18240
tests-special += $(objpfx)tst-error1-mem.out
