tests := mallocbug tst-malloc tst-valloc tst-calloc tst-obstack 	 tst-mallocstate tst-mcheck tst-mallocfork tst-trim1 	 tst-malloc-usable tst-realloc tst-posix_memalign 	 tst-pvalloc tst-memalign tst-mallopt tst-scratch_buffer 	 tst-malloc-backtrace tst-malloc-thread-exit 	 tst-malloc-thread-fail
test-srcs = tst-mtrace
tests-special += $(objpfx)tst-mtrace.out
$(objpfx)tst-malloc-backtrace: /usr/lib/x86_64-linux-gnu/libpthread.so 			       /usr/lib/x86_64-linux-gnu/libpthread_nonshared.a
$(objpfx)tst-malloc-thread-exit: /usr/lib/x86_64-linux-gnu/libpthread.so 			       /usr/lib/x86_64-linux-gnu/libpthread_nonshared.a
$(objpfx)tst-malloc-thread-fail: /usr/lib/x86_64-linux-gnu/libpthread.so 			       /usr/lib/x86_64-linux-gnu/libpthread_nonshared.a
others: $(objpfx)memusage
$(objpfx)memusagestat.o: sysincludes = # nothing
.PHONY: do-memusagestat
do-memusagestat: $(objpfx)memusagestat
$(objpfx)memusagestat: $(memusagestat-modules:%=$(objpfx)%.o)
CFLAGS-mcheck-init.c = $(PIC-ccflag)
CFLAGS-obstack.c = $(uses-callbacks)
$(objpfx)libmcheck.a: $(objpfx)mcheck-init.o
lib: $(objpfx)libmcheck.a
$(objpfx)tst-mtrace.out: tst-mtrace.sh $(objpfx)tst-mtrace
tst-mcheck-ENV = MALLOC_CHECK_=3
tst-malloc-usable-ENV = MALLOC_CHECK_=3
$(objpfx)mtrace: mtrace.pl
$(objpfx)memusage: memusage.sh
$(objpfx)libmemusage.so: $(libdl)
$(foreach o,$(all-object-suffixes),$(objpfx)malloc$(o)): arena.c hooks.c
