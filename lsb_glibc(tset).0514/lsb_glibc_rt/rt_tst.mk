CFLAGS-aio_suspend.c = -fexceptions
CFLAGS-clock_nanosleep.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-librt-cancellation.c = -fasynchronous-unwind-tables
LDFLAGS-rt.so = -Wl,--enable-new-dtags,-z,nodelete
$(objpfx)librt.so: $(shared-thread-library)
$(addprefix $(objpfx),$(tests)): $(objpfx)librt.so $(shared-thread-library)
$(addprefix $(objpfx),$(tests)): $(objpfx)librt.a $(static-thread-library)
tst-mqueue7-ARGS = -- $(host-test-program-cmd)
tests := tst-shm tst-clock tst-clock_nanosleep tst-timer tst-timer2 	 tst-aio tst-aio64 tst-aio2 tst-aio3 tst-aio4 tst-aio5 tst-aio6 	 tst-aio7 tst-aio8 tst-aio9 tst-aio10 	 tst-mqueue1 tst-mqueue2 tst-mqueue3 tst-mqueue4 	 tst-mqueue5 tst-mqueue6 tst-mqueue7 tst-mqueue8 tst-mqueue9 	 tst-timer3 tst-timer4 tst-timer5 	 tst-cpuclock1 tst-cpuclock2 	 tst-cputimer1 tst-cputimer2 tst-cputimer3 	 tst-clock2
