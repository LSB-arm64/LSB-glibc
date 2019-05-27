tests: $(objpfx)ga_test
CFLAGS-libresolv += $(stack-protector)
CFLAGS-res_hconf.c = -fexceptions
$(objpfx)libnss_dns.so: $(objpfx)libresolv.so
$(objpfx)libanl.so: $(shared-thread-library)
$(objpfx)ga_test: $(objpfx)libanl.so $(shared-thread-library)
$(objpfx)tst-res_hconf_reorder: $(libdl) $(shared-thread-library)
tst-res_hconf_reorder-ENV = RESOLV_REORDER=on
$(objpfx)tst-leaks: /usr/lib/x86_64-linux-gnu/libresolv.so
tst-leaks-ENV = MALLOC_TRACE=$(objpfx)tst-leaks.mtrace
$(objpfx)mtrace-tst-leaks.out: $(objpfx)tst-leaks.out
tst-leaks2-ENV = MALLOC_TRACE=$(objpfx)tst-leaks2.mtrace
$(objpfx)mtrace-tst-leaks2.out: $(objpfx)tst-leaks2.out
tests = tst-aton tst-leaks tst-inet_ntop
xtests = tst-leaks2
tests += tst-res_hconf_reorder
tests: $(objpfx)ga_test
tests-special += $(objpfx)mtrace-tst-leaks.out
xtests-special += $(objpfx)mtrace-tst-leaks2.out
