CFLAGS-sigpause.c = -fexceptions
CFLAGS-sigsuspend.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-sigtimedwait.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-sigwait.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-sigwaitinfo.c = -fexceptions -fasynchronous-unwind-tables
tests		:= tst-signal tst-sigset tst-sigsimple tst-raise tst-sigset2
