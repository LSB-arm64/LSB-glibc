subdir_lib: $(objpfx)librpc_compat_pic.a
$(objpfx)librpc_compat_pic.a: $(rpc-compat-routines.os)
$(rpc-compat-routines.os): $(objpfx)compat-%.os: %.c $(before-compile)
CFLAGS-xbootparam_prot.c = -Wno-unused $(PIC-ccflag)
CFLAGS-xnlm_prot.c = -Wno-unused $(PIC-ccflag)
CFLAGS-xrstat.c = -Wno-unused $(PIC-ccflag)
CFLAGS-xyppasswd.c = -Wno-unused $(PIC-ccflag)
CFLAGS-xklm_prot.c = -Wno-unused $(PIC-ccflag)
CFLAGS-xrex.c = -Wno-unused $(PIC-ccflag)
CFLAGS-xsm_inter.c = -Wno-unused $(PIC-ccflag)
CFLAGS-xmount.c = -Wno-unused $(PIC-ccflag)
CFLAGS-xrusers.c = -Wno-unused $(PIC-ccflag)
CFLAGS-xspray.c = -Wno-unused $(PIC-ccflag)
CFLAGS-xnfs_prot.c = -Wno-unused $(PIC-ccflag)
CFLAGS-xrquota.c = -Wno-unused $(PIC-ccflag)
CFLAGS-xkey_prot.c = -Wno-unused $(PIC-ccflag)
CFLAGS-auth_unix.c = -fexceptions
CFLAGS-key_call.c = -fexceptions
CFLAGS-pmap_rmt.c = -fexceptions
CFLAGS-clnt_perr.c = -fexceptions
CFLAGS-openchild.c = -fexceptions
$(objpfx)tst-getmyaddr: /usr/lib/x86_64-linux-gnu/libc.so
$(objpfx)tst-xdrmem: /usr/lib/x86_64-linux-gnu/libc.so
$(objpfx)tst-xdrmem2: /usr/lib/x86_64-linux-gnu/libc.so
$(objpfx)rpcgen: $(addprefix $(objpfx),$(rpcgen-objs))
$(cross-rpcgen-objs): $(objpfx)cross-%.o: %.c $(before-compile)
$(objpfx)cross-rpcgen: $(cross-rpcgen-objs)
$(inst_sysconfdir)/rpc: etc.rpc $(+force)
$(rpcsvc:%.x=$(objpfx)rpcsvc/%.h): $(objpfx)rpcsvc/%.h: $(objpfx)rpcsvc/%.stmp
$(objpfx)rpcsvc/%.stmp: rpcsvc/%.x $(objpfx)cross-rpcgen
$(rpcsvc:%.x=$(objpfx)x%.c): $(objpfx)x%.c: $(objpfx)x%.stmp
$(objpfx)x%.stmp: rpcsvc/%.x $(objpfx)cross-rpcgen
$(rpcsvc:%.x=$(objpfx)x%$o): $(objpfx)x%$o: $(objpfx)x%.c $(objpfx)rpcsvc/%.h
$(objpfx)thrsvc: /usr/lib/x86_64-linux-gnu/libc.so $(shared-thread-library)
tests = tst-xdrmem tst-xdrmem2 test-rpcent
xtests := tst-getmyaddr
xtests += thrsvc
