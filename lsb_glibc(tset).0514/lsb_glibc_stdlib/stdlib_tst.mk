CFLAGS-bsearch.c = $(uses-callbacks)
CFLAGS-msort.c = $(uses-callbacks)
CFLAGS-qsort.c = $(uses-callbacks)
CFLAGS-system.c = -fexceptions
CFLAGS-system.os = -fomit-frame-pointer
CFLAGS-fmtmsg.c = -fexceptions
CFLAGS-strfmon.c = $(libio-mtsafe)
CFLAGS-strfmon_l.c = $(libio-mtsafe)
CFLAGS-tst-bsearch.c = $(stack-align-test-flags)
CFLAGS-tst-qsort.c = $(stack-align-test-flags)
CFLAGS-tst-makecontext.c += -funwind-tables
CFLAGS-tst-makecontext2.c = $(stack-align-test-flags)
$(objpfx)bug-strtod2.out: $(gen-locales)
$(objpfx)testmb2.out: $(gen-locales)
$(objpfx)tst-strtod.out: $(gen-locales)
$(objpfx)tst-strtod3.out: $(gen-locales)
$(objpfx)tst-strtod4.out: $(gen-locales)
$(objpfx)tst-strtod5.out: $(gen-locales)
$(objpfx)tst-strtol-locale.out: $(gen-locales)
$(objpfx)tst-strtod-nan-locale.out: $(gen-locales)
test-canon-ARGS = --test-dir=${common-objpfx}stdlib
bug-fmtmsg1-ENV = SEV_LEVEL=foo,11,newsev
$(objpfx)isomac.out: $(objpfx)isomac
$(objpfx)isomac: isomac.c
$(objpfx)tst-fmtmsg.out: tst-fmtmsg.sh $(objpfx)tst-fmtmsg
$(objpfx)tst-putenv: $(objpfx)tst-putenvmod.so
LDFLAGS-tst-putenv = $(no-as-needed)
$(objpfx)tst-putenvmod.so: $(objpfx)tst-putenvmod.os $(link-libc-deps)
$(objpfx)bug-getcontext: $(libm)
$(objpfx)tst-strtod-round: $(libm)
$(objpfx)tst-tininess: $(libm)
$(objpfx)tst-strtod-underflow: $(libm)
$(objpfx)tst-strtod6: $(libm)
$(objpfx)tst-strtod-nan-locale: $(libm)
tst-tls-atexit-lib.so-no-z-defs = yes
$(objpfx)tst-tls-atexit: $(shared-thread-library) $(libdl)
$(objpfx)tst-tls-atexit.out: $(objpfx)tst-tls-atexit-lib.so
$(objpfx)tst-tls-atexit-nodelete: $(shared-thread-library) $(libdl)
$(objpfx)tst-tls-atexit-nodelete.out: $(objpfx)tst-tls-atexit-lib.so
$(objpfx)tst-setcontext3.out: tst-setcontext3.sh $(objpfx)tst-setcontext3
$(objpfx)tst-makecontext: $(libdl)
test-srcs	:= tst-fmtmsg
tests		:= tst-strtol tst-strtod testmb testrand testsort testdiv   		   test-canon test-canon2 tst-strtoll tst-environ	    		   tst-xpg-basename tst-random tst-random2 tst-bsearch	    		   tst-limits tst-rand48 bug-strtod tst-setcontext          		   tst-setcontext2 test-a64l tst-qsort tst-system testmb2   		   bug-strtod2 tst-atof1 tst-atof2 tst-strtod2 tst-strtod3  		   tst-rand48-2 tst-makecontext tst-strtod4 tst-strtod5     		   tst-qsort2 tst-makecontext2 tst-strtod6 tst-unsetenv1    		   tst-makecontext3 bug-getcontext bug-fmtmsg1		    		   tst-secure-getenv tst-strtod-overflow tst-strtod-round   		   tst-tininess tst-strtod-underflow tst-tls-atexit	    		   tst-setcontext3 tst-tls-atexit-nodelete		    		   tst-strtol-locale tst-strtod-nan-locale
tests-static	:= tst-secure-getenv
modules-names	= tst-tls-atexit-lib
tests		+= tst-putenv
tests-extras += tst-putenvmod
tests-special += $(objpfx)isomac.out
tests-special += $(objpfx)tst-fmtmsg.out
