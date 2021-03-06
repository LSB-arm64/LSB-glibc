CFLAGS-backtrace.c = -fno-omit-frame-pointer
CFLAGS-sprintf_chk.c = $(libio-mtsafe)
CFLAGS-snprintf_chk.c = $(libio-mtsafe)
CFLAGS-vsprintf_chk.c = $(libio-mtsafe)
CFLAGS-vsnprintf_chk.c = $(libio-mtsafe)
CFLAGS-asprintf_chk.c = $(libio-mtsafe)
CFLAGS-vasprintf_chk.c = $(libio-mtsafe)
CFLAGS-obprintf_chk.c = $(libio-mtsafe)
CFLAGS-dprintf_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-vdprintf_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-printf_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-fprintf_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-vprintf_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-vfprintf_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-gets_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-fgets_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-fgets_u_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-fread_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-fread_u_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-swprintf_chk.c = $(libio-mtsafe)
CFLAGS-vswprintf_chk.c = $(libio-mtsafe)
CFLAGS-wprintf_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-fwprintf_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-vwprintf_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-vfwprintf_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-fgetws_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-fgetws_u_chk.c = $(libio-mtsafe) -fexceptions
CFLAGS-read_chk.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pread_chk.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pread64_chk.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-recv_chk.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-recvfrom_chk.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-tst-longjmp_chk.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-tst-longjmp_chk2.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-tst-longjmp_chk3.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-tst-chk1.c = -Wno-format -Wno-error
CFLAGS-tst-chk2.c = -Wno-format -Wno-error
CFLAGS-tst-chk3.c = -Wno-format -Wno-error
CFLAGS-tst-chk4.cc = -Wno-format -Wno-error
CFLAGS-tst-chk5.cc = -Wno-format -Wno-error
CFLAGS-tst-chk6.cc = -Wno-format -Wno-error
CFLAGS-tst-lfschk1.c = -Wno-format -Wno-error
CFLAGS-tst-lfschk2.c = -Wno-format -Wno-error
CFLAGS-tst-lfschk3.c = -Wno-format -Wno-error
CFLAGS-tst-lfschk4.cc = -Wno-format -Wno-error
CFLAGS-tst-lfschk5.cc = -Wno-format -Wno-error
CFLAGS-tst-lfschk6.cc = -Wno-format -Wno-error
CFLAGS-tst-backtrace2.c += -funwind-tables
CFLAGS-tst-backtrace3.c += -funwind-tables
CFLAGS-tst-backtrace4.c += -funwind-tables
CFLAGS-tst-backtrace5.c += -funwind-tables
CFLAGS-tst-backtrace6.c += -funwind-tables
LDFLAGS-tst-backtrace2 = -rdynamic
LDFLAGS-tst-backtrace3 = -rdynamic
LDFLAGS-tst-backtrace4 = -rdynamic
LDFLAGS-tst-backtrace5 = -rdynamic
LDFLAGS-tst-backtrace6 = -rdynamic
$(objpfx)tst-chk1.out: $(gen-locales)
$(objpfx)catchsegv: catchsegv.sh $(common-objpfx)soversions.mk 		    $(common-objpfx)config.make
$(objpfx)pcprofiledump: $(objpfx)pcprofiledump.o
$(objpfx)xtrace: xtrace.sh
tests = backtrace-tst tst-longjmp_chk tst-chk1 tst-chk2 tst-chk3 	tst-lfschk1 tst-lfschk2 tst-lfschk3 test-strcpy_chk test-stpcpy_chk 	tst-chk4 tst-chk5 tst-chk6 tst-lfschk4 tst-lfschk5 tst-lfschk6 	tst-longjmp_chk2 tst-backtrace2 tst-backtrace3 tst-backtrace4 	tst-backtrace5 tst-backtrace6
tests-unsupported = tst-chk4 tst-chk5 tst-chk6 		    tst-lfschk4 tst-lfschk5 tst-lfschk6
