tests = tst-typesizes 	tst-attr1 tst-attr2 tst-attr3 tst-default-attr 	tst-mutex1 tst-mutex2 tst-mutex3 tst-mutex4 tst-mutex5 tst-mutex6 	tst-mutex7 tst-mutex8 tst-mutex9 tst-mutex5a tst-mutex7a 	tst-mutexpi1 tst-mutexpi2 tst-mutexpi3 tst-mutexpi4 tst-mutexpi5 	tst-mutexpi5a tst-mutexpi6 tst-mutexpi7 tst-mutexpi7a tst-mutexpi8 	tst-mutexpi9 	tst-spin1 tst-spin2 tst-spin3 tst-spin4 	tst-cond1 tst-cond2 tst-cond3 tst-cond4 tst-cond5 tst-cond6 tst-cond7 	tst-cond8 tst-cond9 tst-cond10 tst-cond11 tst-cond12 tst-cond13 	tst-cond14 tst-cond15 tst-cond16 tst-cond17 tst-cond18 tst-cond19 	tst-cond20 tst-cond21 tst-cond22 tst-cond23 tst-cond24 tst-cond25 	tst-cond-except 	tst-robust1 tst-robust2 tst-robust3 tst-robust4 tst-robust5 	tst-robust6 tst-robust7 tst-robust8 tst-robust9 	tst-robustpi1 tst-robustpi2 tst-robustpi3 tst-robustpi4 tst-robustpi5 	tst-robustpi6 tst-robustpi7 tst-robustpi8 tst-robustpi9 	tst-rwlock1 tst-rwlock2 tst-rwlock2a tst-rwlock3 tst-rwlock4 	tst-rwlock5 tst-rwlock6 tst-rwlock7 tst-rwlock8 tst-rwlock9 	tst-rwlock10 tst-rwlock11 tst-rwlock12 tst-rwlock13 tst-rwlock14 	tst-rwlock15 tst-rwlock16 	tst-once1 tst-once2 tst-once3 tst-once4  	tst-key1 tst-key2 tst-key3 tst-key4 	tst-sem1 tst-sem2 tst-sem3 tst-sem4 tst-sem5 tst-sem6 tst-sem7 	tst-sem8 tst-sem9 tst-sem10 tst-sem11 tst-sem12 tst-sem13 tst-sem14 	tst-sem15 	tst-barrier1 tst-barrier2 tst-barrier3 tst-barrier4 tst-barrier5 	tst-align tst-align3 	tst-basic1 tst-basic2 tst-basic3 tst-basic4 tst-basic5 tst-basic6 	tst-basic7 	tst-kill1 tst-kill2 tst-kill3 tst-kill4 tst-kill5 tst-kill6 	tst-raise1 	tst-join1 tst-join2 tst-join3 tst-join4 tst-join5 tst-join6 tst-join7 	tst-detach1 	tst-eintr1 tst-eintr2 tst-eintr3 tst-eintr4 tst-eintr5 	tst-tsd1 tst-tsd2 tst-tsd3 tst-tsd4 tst-tsd5 tst-tsd6 	tst-tls1 tst-tls2 	tst-fork1 tst-fork2 tst-fork3 tst-fork4 	tst-atfork1 	tst-cancel1 tst-cancel2 tst-cancel3 tst-cancel4 tst-cancel5 	tst-cancel6 tst-cancel7 tst-cancel8 tst-cancel9 tst-cancel10 	tst-cancel11 tst-cancel12 tst-cancel13 tst-cancel14 tst-cancel15 	tst-cancel16 tst-cancel17 tst-cancel18 tst-cancel19 tst-cancel20 	tst-cancel21 tst-cancel22 tst-cancel23 tst-cancel25 	tst-cancel26 tst-cancel27 	tst-cancel-self tst-cancel-self-cancelstate 	tst-cancel-self-canceltype tst-cancel-self-testcancel 	tst-cleanup0 tst-cleanup1 tst-cleanup2 tst-cleanup3 tst-cleanup4 	tst-flock1 tst-flock2 	tst-signal1 tst-signal2 tst-signal3 tst-signal4 tst-signal5 	tst-signal6 tst-signal7 	tst-exec1 tst-exec2 tst-exec3 tst-exec4 	tst-exit1 tst-exit2 tst-exit3 	tst-stdio1 tst-stdio2 	tst-stack1 tst-stack2 tst-stack3 tst-stack4 tst-pthread-getattr 	tst-pthread-attr-affinity tst-pthread-mutexattr 	tst-unload 	tst-dlsym1 	tst-sysconf 	tst-locale1 tst-locale2 	tst-umask1 	tst-popen1 	tst-clock1 	tst-context1 	tst-sched1 	tst-backtrace1 	tst-abstime 	tst-vfork1 tst-vfork2 tst-vfork1x tst-vfork2x 	tst-getpid3 	tst-setuid3 	tst-initializers1 $(addprefix tst-initializers1-,			    c89 gnu89 c99 gnu99 c11 gnu11) 	tst-bad-schedattr 	 tst-mutex-errorcheck
xtests = tst-setuid1 tst-setuid1-static tst-setuid2 	tst-mutexpp1 tst-mutexpp6 tst-mutexpp10
test-srcs = tst-oddstacklimit
tests-nolibpthread = tst-unload
tests += tst-cancelx2 tst-cancelx3 tst-cancelx4 tst-cancelx5 	 tst-cancelx6 tst-cancelx7 tst-cancelx8 tst-cancelx9 tst-cancelx10 	 tst-cancelx11 tst-cancelx12 tst-cancelx13 tst-cancelx14 tst-cancelx15 	 tst-cancelx16 tst-cancelx17 tst-cancelx18 tst-cancelx20 tst-cancelx21 	 tst-cleanupx0 tst-cleanupx1 tst-cleanupx2 tst-cleanupx3 tst-cleanupx4 	 tst-oncex3 tst-oncex4
tests += tst-atfork2 tst-tls3 tst-tls4 tst-tls5 tst-_res1 tst-fini1 	 tst-stackguard1
tests-nolibpthread += tst-fini1
tests += tst-execstack
modules-names = tst-atfork2mod tst-tls3mod tst-tls4moda tst-tls4modb 		tst-tls5mod tst-tls5moda tst-tls5modb tst-tls5modc 		tst-tls5modd tst-tls5mode tst-tls5modf tst-stack4mod 		tst-_res1mod1 tst-_res1mod2 tst-execstack-mod tst-fini1mod 		tst-join7mod
tests: $(test-modules)
tests-static += tst-locale1 tst-locale2 tst-stackguard1-static 		tst-cancel21-static tst-cond8-static 		tst-mutex8-static tst-mutexpi8-static tst-sem11-static 		tst-sem12-static
tests += tst-stackguard1-static tst-cancel21-static 	 tst-cond8-static tst-mutex8-static tst-mutexpi8-static 	 tst-sem11-static tst-sem12-static
xtests-static += tst-setuid1-static
tests-reverse += tst-cancel5 tst-cancel23 tst-vfork1x tst-vfork2x
tests-special += $(objpfx)tst-stack3-mem.out $(objpfx)tst-oddstacklimit.out
tests-special += $(objpfx)tst-tls6.out $(objpfx)tst-cleanup0-cmp.out 		 $(objpfx)tst-cancel-wrappers.out
tests-unsupported += tst-cancel24 tst-cancel24-static tst-once5
tests-unsupported += tst-thread_local1

CFLAGS-nptl-init.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-unwind.c = -fexceptions
CFLAGS-unwind-forcedunwind.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pthread_cancel.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pthread_setcancelstate.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pthread_setcanceltype.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-cancellation.c = -fasynchronous-unwind-tables
CFLAGS-libc-cancellation.c = -fasynchronous-unwind-tables
CFLAGS-pthread_exit.c = -fexceptions
CFLAGS-forward.c = -fexceptions
CFLAGS-pthread_testcancel.c = -fexceptions
CFLAGS-pthread_join.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pthread_timedjoin.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pthread_once.c = $(uses-callbacks) -fexceptions 			-fasynchronous-unwind-tables
CFLAGS-pthread_cond_wait.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pthread_cond_timedwait.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-sem_wait.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-sem_timedwait.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-fcntl.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-lockf.c = -fexceptions
CFLAGS-pread.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pread64.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pwrite.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pwrite64.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-wait.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-waitpid.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-sigwait.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-msgrcv.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-msgsnd.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-tcdrain.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-open.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-open64.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pause.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-recv.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-send.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-accept.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-sendto.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-sendmsg.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-connect.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-recvmsg.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-recvfrom.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pt-system.c = -fexceptions
CFLAGS-tst-thread_local1.o = -std=gnu++11
LDFLAGS-pthread.so = -Wl,--enable-new-dtags,-z,nodelete,-z,initfirst
CFLAGS-tst-cleanup2.c = -fno-builtin
CFLAGS-tst-cleanupx2.c = -fno-builtin
tst-atfork2mod.so-no-z-defs = yes
tst-tls3mod.so-no-z-defs = yes
tst-tls5mod.so-no-z-defs = yes
tst-tls5moda.so-no-z-defs = yes
tst-tls5modb.so-no-z-defs = yes
tst-tls5modc.so-no-z-defs = yes
tst-tls5modd.so-no-z-defs = yes
tst-tls5mode.so-no-z-defs = yes
tst-tls5modf.so-no-z-defs = yes
tests: $(test-modules)
$(objpfx)multidir.mk: $(common-objpfx)config.make
CFLAGS-flockfile.c = $(libio-mtsafe)
CFLAGS-ftrylockfile.c = $(libio-mtsafe)
CFLAGS-funlockfile.c = $(libio-mtsafe)
lib-noranlib: $(addprefix $(objpfx),$(extra-objs))
install: $(inst_libdir)/libpthread.so
$(inst_libdir)/libpthread.so: $(common-objpfx)format.lds 			      $(objpfx)libpthread.so$(libpthread.so-version) 			      $(inst_libdir)/$(patsubst %,$(libtype.oS),							$(libprefix)pthread) 			      $(+force)
CFLAGS-pthread_self.os += -fomit-frame-pointer
CFLAGS-tst-cancelx2.c += -fexceptions
CFLAGS-tst-cancelx3.c += -fexceptions
CFLAGS-tst-cancelx4.c += -fexceptions
CFLAGS-tst-cancelx5.c += -fexceptions
CFLAGS-tst-cancelx6.c += -fexceptions
CFLAGS-tst-cancelx7.c += -fexceptions
CFLAGS-tst-cancelx8.c += -fexceptions
CFLAGS-tst-cancelx9.c += -fexceptions
CFLAGS-tst-cancelx10.c += -fexceptions
CFLAGS-tst-cancelx11.c += -fexceptions
CFLAGS-tst-cancelx12.c += -fexceptions
CFLAGS-tst-cancelx13.c += -fexceptions
CFLAGS-tst-cancelx14.c += -fexceptions
CFLAGS-tst-cancelx15.c += -fexceptions
CFLAGS-tst-cancelx16.c += -fexceptions
CFLAGS-tst-cancelx17.c += -fexceptions
CFLAGS-tst-cancelx18.c += -fexceptions
CFLAGS-tst-cancelx20.c += -fexceptions -fasynchronous-unwind-tables
CFLAGS-tst-cancelx21.c += -fexceptions -fasynchronous-unwind-tables
CFLAGS-tst-cleanupx0.c += -fexceptions -fasynchronous-unwind-tables
CFLAGS-tst-cleanupx1.c += -fexceptions -fasynchronous-unwind-tables
CFLAGS-tst-cleanupx2.c += -fexceptions
CFLAGS-tst-cleanupx3.c += -fexceptions
CFLAGS-tst-cleanupx4.c += -fexceptions
CFLAGS-tst-oncex3.c += -fexceptions
CFLAGS-tst-oncex4.c += -fexceptions
CFLAGS-tst-align.c += $(stack-align-test-flags)
CFLAGS-tst-align3.c += $(stack-align-test-flags)
CFLAGS-tst-initializers1.c = -W -Wall -Werror
CFLAGS-tst-initializers1-< = $(CFLAGS-tst-initializers1.c) 			     $(patsubst tst-initializers1-%.c,-std=%,$<)
CFLAGS-tst-initializers1-c89.c = $(CFLAGS-tst-initializers1-<)
CFLAGS-tst-initializers1-c99.c = $(CFLAGS-tst-initializers1-<)
CFLAGS-tst-initializers1-c11.c = $(CFLAGS-tst-initializers1-<)
CFLAGS-tst-initializers1-gnu89.c = $(CFLAGS-tst-initializers1-<)
CFLAGS-tst-initializers1-gnu99.c = $(CFLAGS-tst-initializers1-<)
CFLAGS-tst-initializers1-gnu11.c = $(CFLAGS-tst-initializers1-<)
tst-cancel7-ARGS = --command "exec $(host-test-program-cmd)"
tst-cancelx7-ARGS = $(tst-cancel7-ARGS)
tst-umask1-ARGS = $(objpfx)tst-umask1.temp
$(objpfx)tst-atfork2: $(libdl) $(shared-thread-library)
LDFLAGS-tst-atfork2 = -rdynamic
tst-atfork2-ENV = MALLOC_TRACE=$(objpfx)tst-atfork2.mtrace
$(objpfx)tst-atfork2mod.so: $(shared-thread-library)
tst-stack3-ENV = MALLOC_TRACE=$(objpfx)tst-stack3.mtrace
$(objpfx)tst-stack3-mem.out: $(objpfx)tst-stack3.out
$(objpfx)tst-stack4: $(libdl) $(shared-thread-library)
$(objpfx)tst-stack4.out: $(tst-stack4mod.sos)
$(tst-stack4mod.sos): $(objpfx)tst-stack4mod.so
$(objpfx)tst-cleanup4: $(objpfx)tst-cleanup4aux.o $(shared-thread-library)
$(objpfx)tst-cleanupx4: $(objpfx)tst-cleanup4aux.o $(shared-thread-library)
$(objpfx)tst-tls3: $(libdl) $(shared-thread-library)
LDFLAGS-tst-tls3 = -rdynamic
$(objpfx)tst-tls3.out: $(objpfx)tst-tls3mod.so
$(objpfx)tst-tls3mod.so: $(shared-thread-library)
$(objpfx)tst-tls4: $(libdl) $(shared-thread-library)
$(objpfx)tst-tls4.out: $(objpfx)tst-tls4moda.so $(objpfx)tst-tls4modb.so
$(objpfx)tst-tls5: $(objpfx)tst-tls5mod.so $(shared-thread-library)
LDFLAGS-tst-tls5 = $(no-as-needed)
LDFLAGS-tst-tls5mod.so = -Wl,-soname,tst-tls5mod.so
$(objpfx)tst-tls6.out: tst-tls6.sh $(objpfx)tst-tls5 		       $(objpfx)tst-tls5moda.so $(objpfx)tst-tls5modb.so 		       $(objpfx)tst-tls5modc.so $(objpfx)tst-tls5modd.so 		       $(objpfx)tst-tls5mode.so $(objpfx)tst-tls5modf.so
$(objpfx)tst-join7: $(libdl) $(shared-thread-library)
$(objpfx)tst-join7.out: $(objpfx)tst-join7mod.so
$(objpfx)tst-join7mod.so: $(shared-thread-library)
LDFLAGS-tst-join7mod.so = -Wl,-soname,tst-join7mod.so
$(objpfx)tst-dlsym1: $(libdl) $(shared-thread-library)
$(objpfx)tst-fini1: $(shared-thread-library) $(objpfx)tst-fini1mod.so
$(objpfx)tst-cancel17: $(librt)
$(objpfx)tst-cancelx17: $(librt)
$(objpfx)tst-_res1mod2.so: $(objpfx)tst-_res1mod1.so
LDFLAGS-tst-_res1mod1.so = -Wl,-soname,tst-_res1mod1.so
LDFLAGS-tst-_res1mod2.so = -Wl,-soname,tst-_res1mod2.so
$(objpfx)tst-_res1: $(objpfx)tst-_res1mod1.so $(objpfx)tst-_res1mod2.so 		    $(shared-thread-library)
$(objpfx)libpthread.so: $(addprefix $(objpfx),$(crti-objs) $(crtn-objs))
$(objpfx)libpthread.so: +preinit += $(addprefix $(objpfx),$(crti-objs))
$(objpfx)libpthread.so: +postinit += $(addprefix $(objpfx),$(crtn-objs))
$(addprefix $(objpfx),   $(filter-out $(tests-static) $(xtests-static) $(tests-reverse)     $(tests-nolibpthread),     $(tests) $(xtests) $(test-srcs))): /usr/lib/x86_64-linux-gnu/libpthread.so 				       /usr/lib/x86_64-linux-gnu/libpthread_nonshared.a
$(objpfx)tst-unload: $(libdl)
$(addprefix $(objpfx), $(tests-reverse)):   /usr/lib/x86_64-linux-gnu/libc.so /usr/lib/x86_64-linux-gnu/libpthread.so   /usr/lib/x86_64-linux-gnu/libpthread_nonshared.a
$(objpfx)../libc.so: $(common-objpfx)libc.so ;
$(addprefix $(objpfx),$(tests-static) $(xtests-static)): /usr/lib/x86_64-linux-gnu/libpthread.so
$(objpfx)tst-atfork2.out: $(objpfx)tst-atfork2mod.so
$(addprefix $(objpfx),$(tests) $(test-srcs)): /usr/lib/x86_64-linux-gnu/libpthread.a
$(objpfx)tst-cleanup0.out: /dev/null $(objpfx)tst-cleanup0
$(objpfx)tst-cleanup0-cmp.out: tst-cleanup0.expect $(objpfx)tst-cleanup0.out
$(objpfx)crti.o: $(objpfx)pt-crti.o
$(objpfx)$(multidir)/crti.o: $(objpfx)crti.o $(objpfx)$(multidir)/
$(objpfx)$(multidir)/crtn.o: $(objpfx)crtn.o $(objpfx)$(multidir)/
$(objpfx)version.d: $(objpfx)banner.h
$(objpfx)version.os: $(objpfx)banner.h
$(objpfx)banner.h: Banner
LDFLAGS-pthread.so += -e __nptl_main
$(objpfx)pt-interp.os: $(common-objpfx)runtime-linker.h
$(objpfx)tst-cancel-wrappers.out: tst-cancel-wrappers.sh
tst-exec4-ARGS = $(host-test-program-cmd)
$(objpfx)tst-execstack: $(libdl)
$(objpfx)tst-execstack.out: $(objpfx)tst-execstack-mod.so
LDFLAGS-tst-execstack = -Wl,-z,noexecstack
CFLAGS-tst-execstack-mod.c += -Wno-trampolines
$(objpfx)tst-fini1mod.so: $(shared-thread-library)
tst-stackguard1-ARGS = --command "$(host-test-program-cmd) --child"
tst-stackguard1-static-ARGS = --command "$(objpfx)tst-stackguard1-static --child"
$(objpfx)tst-oddstacklimit.out: $(objpfx)tst-oddstacklimit $(objpfx)tst-basic1
