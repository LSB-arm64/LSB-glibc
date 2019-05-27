$(objpfx)bug14.out: $(gen-locales)
$(objpfx)scanf13.out: $(gen-locales)
$(objpfx)test-vfprintf.out: $(gen-locales)
$(objpfx)tst-grouping.out: $(gen-locales)
$(objpfx)tst-sprintf.out: $(gen-locales)
$(objpfx)tst-sscanf.out: $(gen-locales)
$(objpfx)tst-swprintf.out: $(gen-locales)
tst-printf-bz18872-ENV = MALLOC_TRACE=$(objpfx)tst-printf-bz18872.mtrace
$(objpfx)tst-unbputc.out: tst-unbputc.sh $(objpfx)tst-unbputc
$(objpfx)tst-printf.out: tst-printf.sh $(objpfx)tst-printf
$(objpfx)tst-printf-bz18872.c: tst-printf-bz18872.sh
$(objpfx)tst-printf-bz18872-mem.out: $(objpfx)tst-printf-bz18872.out
CFLAGS-vfprintf.c = -Wno-uninitialized
CFLAGS-vfwprintf.c = -Wno-uninitialized
CFLAGS-tmpfile.c = -fexceptions
CFLAGS-tmpfile64.c = -fexceptions
CFLAGS-tempname.c = -fexceptions
CFLAGS-psignal.c = -fexceptions
CFLAGS-vprintf.c = -fexceptions
CFLAGS-cuserid.c = -fexceptions
CFLAGS-vfprintf.c += -fexceptions
CFLAGS-fprintf.c += -fexceptions
CFLAGS-printf.c += -fexceptions
CFLAGS-vfwprintf.c += -fexceptions
CFLAGS-vfscanf.c += -fexceptions
CFLAGS-vfwscanf.c += -fexceptions
CFLAGS-fscanf.c += -fexceptions
CFLAGS-scanf.c += -fexceptions
CFLAGS-isoc99_vfscanf.c += -fexceptions
CFLAGS-isoc99_vscanf.c += -fexceptions
CFLAGS-isoc99_fscanf.c += -fexceptions
CFLAGS-isoc99_scanf.c += -fexceptions
CFLAGS-errlist.c = $(fno-unit-at-a-time)
CFLAGS-siglist.c = $(fno-unit-at-a-time)
CFLAGS-scanf15.c = -I../libio -I../stdlib -I../wcsmbs -I../time -I../string 		   -I../wctype
CFLAGS-scanf17.c = -I../libio -I../stdlib -I../wcsmbs -I../time -I../string 		   -I../wctype
$(objpfx)tst-setvbuf1.out: /dev/null $(objpfx)tst-setvbuf1
$(objpfx)tst-setvbuf1-cmp.out: tst-setvbuf1.expect $(objpfx)tst-setvbuf1.out
$(objpfx)tst-printf-round: $(libm)
tests := tstscanf test_rdwr test-popen tstgetln test-fseek 	 temptest tst-fileno test-fwrite tst-ungetc tst-ferror 	 xbug errnobug 	 bug1 bug2 bug3 bug4 bug5 bug6 bug7 bug8 bug9 bug10 bug11 bug12 bug13 	 tfformat tiformat tllformat tstdiomisc tst-printfsz tst-wc-printf 	 scanf1 scanf2 scanf3 scanf4 scanf5 scanf7 scanf8 scanf9 scanf10 	 scanf11 scanf12 tst-tmpnam tst-cookie tst-obprintf tst-sscanf 	 tst-swprintf tst-fseek tst-fmemopen test-vfprintf tst-gets 	 tst-perror tst-sprintf tst-rndseek tst-fdopen tst-fphex bug14 	 tst-popen tst-unlockedio tst-fmemopen2 tst-put-error tst-fgets 	 tst-fwrite bug16 bug17 tst-swscanf tst-sprintf2 bug18 bug18a 	 bug19 bug19a tst-popen2 scanf13 scanf14 scanf15 bug20 bug21 bug22 	 scanf16 scanf17 tst-setvbuf1 tst-grouping bug23 bug24 	 bug-vfprintf-nargs tst-long-dbl-fphex tst-fphex-wide tst-sprintf3 	 bug25 tst-printf-round bug23-2 bug23-3 bug23-4 bug26 tst-fmemopen3 	 tst-printf-bz18872
test-srcs = tst-unbputc tst-printf
tests-special += $(objpfx)tst-unbputc.out $(objpfx)tst-printf.out 		 $(objpfx)tst-printf-bz18872-mem.out 		 $(objpfx)tst-setvbuf1-cmp.out
