CFLAGS-dl-runtime.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-dl-lookup.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-dl-iterate-phdr.c = $(uses-callbacks)
$(objpfx)sotruss-lib.so: $(objpfx)sotruss-lib.os
$(objpfx)sotruss-lib.so: $(common-objpfx)libc.so $(objpfx)ld.so 	$(common-objpfx)libc_nonshared.a
$(objpfx)sotruss: sotruss.sh $(common-objpfx)config.make
$(inst_auditdir)/sotruss-lib.so: $(objpfx)sotruss-lib.so $(+force)
tst-tls9-static-ENV =        LD_LIBRARY_PATH=$(objpfx):$(common-objpfx):$(common-objpfx)dlfcn
LDFLAGS-tst-dlopen-aout = $(no-pie-ldflag)
$(objpfx)tst-protected1a: $(addprefix $(objpfx),tst-protected1moda.so tst-protected1modb.so)
$(objpfx)tst-protected1b: $(addprefix $(objpfx),tst-protected1modb.so tst-protected1moda.so)
tst-protected1modb.so-no-z-defs = yes
CFLAGS-vismain.c = $(PIE-ccflag)
check-abi: $(objpfx)check-abi-ld.out
update-abi: update-abi-ld
update-all-abi: update-all-abi-ld
lib-noranlib: $(objpfx)$(rtld-installed-name) 	      $(addprefix $(objpfx),$(extra-objs))
$(objpfx)sotruss-lib.so: $(shlib-lds)
$(objpfx)dl-allobjs.os: $(all-rtld-routines:%=$(objpfx)%.os)
$(objpfx)librtld.map: $(objpfx)dl-allobjs.os $(common-objpfx)libc_pic.a
$(objpfx)librtld.mk: $(objpfx)librtld.map Makefile
$(objpfx)rtld-libc.a: $(objpfx)librtld.mk FORCE
$(objpfx)librtld.os: $(objpfx)dl-allobjs.os $(objpfx)rtld-libc.a
$(objpfx)ld.so: $(objpfx)librtld.os $(ld-map)
$(objpfx)interp.os: $(common-objpfx)runtime-linker.h
$(objpfx)$(rtld-installed-name): $(objpfx)ld.so
$(objpfx)trusted-dirs.h: $(objpfx)trusted-dirs.st; @:
$(objpfx)trusted-dirs.st: Makefile $(..)Makeconfig
$(inst_slibdir)/$(rtld-version-installed-name): $(objpfx)ld.so $(+force)
$(inst_rtlddir)/$(rtld-installed-name):   $(inst_slibdir)/$(rtld-version-installed-name)   $(inst_slibdir)/libc-$(version).so
.PHONY: ldso_install
ldso_install: $(inst_rtlddir)/$(rtld-installed-name)
$(objpfx)ldd: ldd.bash.in $(common-objpfx)soversions.mk 	      $(common-objpfx)config.make
$(objpfx)sprof: $(libdl)
$(objpfx)sln: $(sln-modules:%=$(objpfx)%.o)
$(objpfx)ldconfig: $(ldconfig-modules:%=$(objpfx)%.o)
CFLAGS-ldconfig.c = $(SYSCONF-FLAGS) -D'LIBDIR="$(libdir)"' 		    -D'SLIBDIR="$(slibdir)"'
CFLAGS-dl-cache.c = $(SYSCONF-FLAGS)
CFLAGS-cache.c = $(SYSCONF-FLAGS)
CFLAGS-rtld.c = $(SYSCONF-FLAGS)
$(objpfx)testobj1.so: $(libdl)
$(objpfx)testobj1_1.so: $(objpfx)testobj1.so $(libdl)
$(objpfx)testobj2.so: $(objpfx)testobj1.so $(libdl)
$(objpfx)testobj3.so: $(libdl)
$(objpfx)testobj4.so: $(libdl)
$(objpfx)testobj5.so: $(libdl)
$(objpfx)testobj6.so: $(objpfx)testobj1.so $(objpfx)testobj2.so $(libdl)
$(objpfx)failobj.so: $(objpfx)testobj6.so
$(objpfx)dep1.so: $(objpfx)dep2.so $(objpfx)dep4.so
$(objpfx)dep2.so: $(objpfx)dep3.so $(objpfx)dep4.so
$(objpfx)dep4.so: $(objpfx)dep3.so
$(objpfx)nodelmod3.so: $(objpfx)nodelmod4.so
$(objpfx)nextmod1.so: $(libdl)
$(objpfx)neededobj1.so: $(libdl)
$(objpfx)neededobj2.so: $(objpfx)neededobj1.so $(libdl)
$(objpfx)neededobj3.so: $(objpfx)neededobj1.so $(objpfx)neededobj2.so $(libdl)
$(objpfx)neededobj4.so: $(objpfx)neededobj1.so $(objpfx)neededobj2.so 			$(objpfx)neededobj3.so $(libdl)
$(objpfx)neededobj6.so: $(objpfx)neededobj5.so
$(objpfx)unload2mod.so: $(objpfx)unload2dep.so
$(objpfx)ltglobmod2.so: $(libdl)
$(objpfx)firstobj.so: $(shared-thread-library)
$(objpfx)globalmod1.so: $(libdl)
$(objpfx)reldep4mod1.so: $(objpfx)reldep4mod3.so
$(objpfx)reldep4mod2.so: $(objpfx)reldep4mod4.so
$(objpfx)dblloadmod1.so: $(objpfx)dblloadmod3.so
$(objpfx)dblloadmod2.so: $(objpfx)dblloadmod3.so
$(objpfx)reldepmod5.so: $(objpfx)reldepmod2.so
$(objpfx)reldepmod6.so: $(objpfx)reldepmod2.so
$(objpfx)reldep6mod1.so: $(objpfx)reldep6mod0.so
$(objpfx)reldep6mod2.so: $(objpfx)reldep6mod1.so
$(objpfx)reldep6mod3.so: $(objpfx)reldep6mod2.so
$(objpfx)reldep6mod4.so: $(objpfx)reldep6mod1.so
$(objpfx)tst-tlsmod3.so: $(objpfx)tst-tlsmod2.so
$(objpfx)tst-tlsmod8.so: $(objpfx)tst-tlsmod7.so
$(objpfx)tst-tlsmod10.so: $(objpfx)tst-tlsmod9.so
$(objpfx)tst-tlsmod12.so: $(objpfx)tst-tlsmod11.so
$(objpfx)tst-tlsmod13a.so: $(objpfx)tst-tlsmod13.so
$(objpfx)tst-tlsmod5.so: $(common-objpfx)libc.so
$(objpfx)tst-tlsmod6.so: $(common-objpfx)libc.so
$(objpfx)tst-tls19mod1.so: $(objpfx)tst-tls19mod2.so $(objpfx)tst-tls19mod3.so
$(objpfx)tst-tls19mod3.so: $(objpfx)ld.so
$(objpfx)reldep8mod3.so: $(objpfx)reldep8mod1.so $(objpfx)reldep8mod2.so
$(objpfx)nodel2mod3.so: $(objpfx)nodel2mod1.so $(objpfx)nodel2mod2.so
$(objpfx)reldep9mod2.so: $(objpfx)reldep9mod1.so
$(objpfx)reldep9mod3.so: $(objpfx)reldep9mod1.so $(objpfx)reldep9mod2.so
$(objpfx)unload3mod1.so: $(objpfx)unload3mod3.so
$(objpfx)unload3mod2.so: $(objpfx)unload3mod3.so
$(objpfx)unload3mod3.so: $(objpfx)unload3mod4.so
$(objpfx)unload4mod1.so: $(objpfx)unload4mod2.so $(objpfx)unload4mod3.so
$(objpfx)unload4mod2.so: $(objpfx)unload4mod4.so $(objpfx)unload4mod3.so
$(objpfx)unload6mod1.so: $(libdl)
$(objpfx)unload6mod2.so: $(libdl)
$(objpfx)unload6mod3.so: $(libdl)
$(objpfx)unload7mod1.so: $(libdl)
$(objpfx)unload7mod2.so: $(objpfx)unload7mod1.so
$(objpfx)unload8mod1.so: $(objpfx)unload8mod2.so
$(objpfx)unload8mod2.so: $(objpfx)unload8mod3.so
$(objpfx)unload8mod3.so: $(libdl)
$(objpfx)tst-initordera2.so: $(objpfx)tst-initordera1.so
$(objpfx)tst-initorderb2.so: $(objpfx)tst-initorderb1.so $(objpfx)tst-initordera2.so
$(objpfx)tst-initordera3.so: $(objpfx)tst-initorderb2.so $(objpfx)tst-initorderb1.so
$(objpfx)tst-initordera4.so: $(objpfx)tst-initordera3.so
$(objpfx)tst-initorder: $(objpfx)tst-initordera4.so $(objpfx)tst-initordera1.so $(objpfx)tst-initorderb2.so
$(objpfx)tst-null-argv: $(objpfx)tst-null-argv-lib.so
$(objpfx)tst-tlsalign: $(objpfx)tst-tlsalign-lib.so
$(objpfx)tst-nodelete-opened.out: $(objpfx)tst-nodelete-opened-lib.so
$(objpfx)tst-nodelete-opened: $(libdl)
$(objpfx)tst-tlsalign-extern: $(objpfx)tst-tlsalign-vars.o
$(objpfx)tst-tlsalign-extern-static: $(objpfx)tst-tlsalign-vars.o
tst-null-argv-ENV = LD_DEBUG=all LD_DEBUG_OUTPUT=$(objpfx)tst-null-argv.debug.out
LDFLAGS-nodel2mod3.so = $(no-as-needed)
LDFLAGS-reldepmod5.so = $(no-as-needed)
LDFLAGS-reldep6mod1.so = $(no-as-needed)
LDFLAGS-reldep6mod4.so = $(no-as-needed)
LDFLAGS-reldep8mod3.so = $(no-as-needed)
LDFLAGS-unload4mod1.so = $(no-as-needed)
LDFLAGS-unload4mod2.so = $(no-as-needed)
LDFLAGS-tst-initorder = $(no-as-needed)
LDFLAGS-tst-initordera2.so = $(no-as-needed)
LDFLAGS-tst-initordera3.so = $(no-as-needed)
LDFLAGS-tst-initordera4.so = $(no-as-needed)
LDFLAGS-tst-initorderb2.so = $(no-as-needed)
LDFLAGS-tst-tlsmod5.so = -nostdlib $(no-as-needed)
LDFLAGS-tst-tlsmod6.so = -nostdlib $(no-as-needed)
testobj1.so-no-z-defs = yes
testobj3.so-no-z-defs = yes
testobj4.so-no-z-defs = yes
testobj5.so-no-z-defs = yes
testobj6.so-no-z-defs = yes
failobj.so-no-z-defs = yes
constload2.so-no-z-defs = yes
constload3.so-no-z-defs = yes
nodelmod1.so-no-z-defs = yes
nodelmod2.so-no-z-defs = yes
nodelmod4.so-no-z-defs = yes
nodel2mod2.so-no-z-defs = yes
reldepmod2.so-no-z-defs = yes
reldepmod3.so-no-z-defs = yes
reldepmod4.so-no-z-defs = yes
reldep4mod4.so-no-z-defs = yes
reldep4mod2.so-no-z-defs = yes
ltglobmod2.so-no-z-defs = yes
dblloadmod3.so-no-z-defs = yes
tst-tlsmod1.so-no-z-defs = yes
tst-tlsmod2.so-no-z-defs = yes
tst-tlsmod3.so-no-z-defs = yes
tst-tlsmod4.so-no-z-defs = yes
tst-tlsmod7.so-no-z-defs = yes
tst-tlsmod8.so-no-z-defs = yes
tst-tlsmod9.so-no-z-defs = yes
tst-tlsmod10.so-no-z-defs = yes
tst-tlsmod12.so-no-z-defs = yes
tst-tlsmod14a.so-no-z-defs = yes
tst-tlsmod14b.so-no-z-defs = yes
tst-tlsmod15a.so-no-z-defs = yes
tst-tlsmod16b.so-no-z-defs = yes
circlemod2.so-no-z-defs = yes
circlemod3.so-no-z-defs = yes
circlemod3a.so-no-z-defs = yes
reldep8mod2.so-no-z-defs = yes
reldep9mod1.so-no-z-defs = yes
unload3mod4.so-no-z-defs = yes
unload4mod1.so-no-z-defs = yes
ifuncmod1.so-no-z-defs = yes
ifuncmod5.so-no-z-defs = yes
ifuncmod6.so-no-z-defs = yes
tst-auditmod9a.so-no-z-defs = yes
tst-auditmod9b.so-no-z-defs = yes
tst-nodelete-uniquemod.so-no-z-defs = yes
tst-nodelete-rtldmod.so-no-z-defs = yes
tst-nodelete-zmod.so-no-z-defs = yes
tst-nodelete2mod.so-no-z-defs = yes
tests: $(test-modules)
$(objpfx)loadtest: $(libdl)
LDFLAGS-loadtest = -rdynamic
$(objpfx)loadtest.out: $(test-modules)
$(objpfx)neededtest: $(libdl)
$(objpfx)neededtest.out: $(objpfx)neededobj1.so $(objpfx)neededobj2.so 			 $(objpfx)neededobj3.so
$(objpfx)neededtest2: $(libdl)
$(objpfx)neededtest2.out: $(objpfx)neededobj1.so $(objpfx)neededobj2.so 			  $(objpfx)neededobj3.so
$(objpfx)neededtest3: $(libdl)
$(objpfx)neededtest3.out: $(objpfx)neededobj1.so $(objpfx)neededobj2.so 			  $(objpfx)neededobj3.so $(objpfx)neededobj4.so
$(objpfx)neededtest4: $(libdl) $(objpfx)neededobj1.so
$(objpfx)neededtest4.out: $(objpfx)neededobj5.so $(objpfx)neededobj6.so
$(objpfx)restest1: $(objpfx)testobj1.so $(objpfx)testobj1_1.so $(libdl)
LDFLAGS-restest1 = -rdynamic
$(objpfx)restest2: $(libdl)
LDFLAGS-restest2 = -rdynamic
$(objpfx)restest1.out: $(test-modules)
$(objpfx)preloadtest: $(objpfx)testobj6.so
LDFLAGS-preloadtest = -rdynamic
$(objpfx)preloadtest.out: $(preloadtest-preloads:%=$(objpfx)%.so)
preloadtest-ENV =   LD_PRELOAD=$(subst $(empty) ,:,$(strip $(preloadtest-preloads:=.so)))
$(objpfx)loadfail: $(libdl)
LDFLAGS-loadfail = -rdynamic
$(objpfx)loadfail.out: $(objpfx)failobj.so
$(objpfx)multiload: $(libdl)
LDFLAGS-multiload = -rdynamic
CFLAGS-multiload.c = -DOBJDIR=\"$(elf-objpfx)\"
$(objpfx)multiload.out: $(objpfx)testobj1.so
$(objpfx)origtest: $(libdl)
LDFLAGS-origtest = -rdynamic
$(objpfx)origtest.out: $(objpfx)testobj1.so
$(objpfx)resolvfail: $(libdl) $(shared-thread-library)
$(objpfx)resolvfail: $(libdl)
$(objpfx)constload1: $(libdl)
$(objpfx)constload1.out: $(objpfx)constload2.so $(objpfx)constload3.so
$(objpfx)circleload1: $(libdl)
$(objpfx)circleload1.out: $(objpfx)circlemod1.so 			  $(objpfx)circlemod1a.so
$(objpfx)circlemod1.so: $(objpfx)circlemod2.so
$(objpfx)circlemod2.so: $(objpfx)circlemod3.so
$(objpfx)circlemod1a.so: $(objpfx)circlemod2a.so
$(objpfx)circlemod2a.so: $(objpfx)circlemod3a.so
$(objpfx)order: $(addprefix $(objpfx),dep4.so dep3.so dep2.so dep1.so)
$(objpfx)order-cmp.out: $(objpfx)order.out
$(objpfx)vismain: $(addprefix $(objpfx),vismod1.so vismod2.so)
$(objpfx)vismain.out: $(addprefix $(objpfx),vismod3.so)
vismain-ENV = LD_PRELOAD=$(addprefix $(objpfx),vismod3.so)
$(objpfx)noload: $(objpfx)testobj1.so $(libdl)
LDFLAGS-noload = -rdynamic $(no-as-needed)
$(objpfx)noload.out: $(objpfx)testobj5.so
$(objpfx)noload-mem.out: $(objpfx)noload.out
noload-ENV = MALLOC_TRACE=$(objpfx)noload.mtrace
LDFLAGS-nodelete = -rdynamic
LDFLAGS-nodelmod1.so = -Wl,--enable-new-dtags,-z,nodelete
LDFLAGS-nodelmod4.so = -Wl,--enable-new-dtags,-z,nodelete
$(objpfx)nodelete: $(libdl)
$(objpfx)nodelete.out: $(objpfx)nodelmod1.so $(objpfx)nodelmod2.so 		       $(objpfx)nodelmod3.so
LDFLAGS-nodlopenmod.so = -Wl,--enable-new-dtags,-z,nodlopen
$(objpfx)nodlopen: $(libdl)
$(objpfx)nodlopen.out: $(objpfx)nodlopenmod.so
$(objpfx)nodlopenmod2.so: $(objpfx)nodlopenmod.so
$(objpfx)nodlopen2: $(libdl)
$(objpfx)nodlopen2.out: $(objpfx)nodlopenmod2.so
$(objpfx)filtmod1.so: $(objpfx)filtmod1.os $(objpfx)filtmod2.so
$(objpfx)filter: $(objpfx)filtmod1.so
$(objpfx)unload: $(libdl)
$(objpfx)unload.out: $(objpfx)unloadmod.so
$(objpfx)reldep: $(libdl)
$(objpfx)reldep.out: $(objpfx)reldepmod1.so $(objpfx)reldepmod2.so
$(objpfx)reldep2: $(libdl)
$(objpfx)reldep2.out: $(objpfx)reldepmod1.so $(objpfx)reldepmod3.so
$(objpfx)reldep3: $(libdl)
$(objpfx)reldep3.out: $(objpfx)reldepmod1.so $(objpfx)reldepmod4.so
$(objpfx)reldep4: $(libdl)
$(objpfx)reldep4.out: $(objpfx)reldep4mod1.so $(objpfx)reldep4mod2.so
$(objpfx)next: $(objpfx)nextmod1.so $(objpfx)nextmod2.so $(libdl)
LDFLAGS-next = $(no-as-needed)
$(objpfx)unload2: $(libdl)
$(objpfx)unload2.out: $(objpfx)unload2mod.so $(objpfx)unload2dep.so
$(objpfx)lateglobal: $(libdl)
$(objpfx)lateglobal.out: $(objpfx)ltglobmod1.so $(objpfx)ltglobmod2.so
$(objpfx)tst-pathopt: $(libdl)
$(objpfx)tst-pathopt.out: tst-pathopt.sh $(objpfx)tst-pathopt 			  $(objpfx)pathoptobj.so
$(objpfx)tst-rtld-load-self.out: tst-rtld-load-self.sh $(objpfx)ld.so
$(objpfx)initfirst: $(libdl)
$(objpfx)initfirst.out: $(objpfx)firstobj.so
$(objpfx)global: $(objpfx)globalmod1.so
$(objpfx)global.out: $(objpfx)reldepmod1.so
$(objpfx)dblload: $(libdl)
$(objpfx)dblload.out: $(objpfx)dblloadmod1.so $(objpfx)dblloadmod2.so
$(objpfx)dblunload: $(libdl)
$(objpfx)dblunload.out: $(objpfx)dblloadmod1.so $(objpfx)dblloadmod2.so
$(objpfx)reldep5: $(libdl)
$(objpfx)reldep5.out: $(objpfx)reldepmod5.so $(objpfx)reldepmod6.so
$(objpfx)reldep6: $(libdl)
$(objpfx)reldep6.out: $(objpfx)reldep6mod3.so $(objpfx)reldep6mod4.so
$(objpfx)reldep7: $(libdl)
$(objpfx)reldep7.out: $(objpfx)reldep7mod1.so $(objpfx)reldep7mod2.so
$(objpfx)reldep8: $(libdl)
$(objpfx)reldep8.out: $(objpfx)reldep8mod3.so
LDFLAGS-nodel2mod2.so = -Wl,--enable-new-dtags,-z,nodelete
$(objpfx)nodelete2: $(libdl)
$(objpfx)nodelete2.out: $(objpfx)nodel2mod3.so
$(objpfx)reldep9: $(libdl)
$(objpfx)reldep9.out: $(objpfx)reldep9mod3.so
$(objpfx)tst-tls3: $(objpfx)tst-tlsmod1.so
$(objpfx)tst-tls4: $(libdl)
$(objpfx)tst-tls4.out: $(objpfx)tst-tlsmod2.so
$(objpfx)tst-tls5: $(libdl)
$(objpfx)tst-tls5.out: $(objpfx)tst-tlsmod2.so
$(objpfx)tst-tls6: $(libdl)
$(objpfx)tst-tls6.out: $(objpfx)tst-tlsmod2.so
$(objpfx)tst-tls7: $(libdl)
$(objpfx)tst-tls7.out: $(objpfx)tst-tlsmod3.so
$(objpfx)tst-tls8: $(libdl)
$(objpfx)tst-tls8.out: $(objpfx)tst-tlsmod3.so $(objpfx)tst-tlsmod4.so
$(objpfx)tst-tls9: $(libdl)
$(objpfx)tst-tls9.out: $(objpfx)tst-tlsmod5.so $(objpfx)tst-tlsmod6.so
$(objpfx)tst-tls10: $(objpfx)tst-tlsmod8.so $(objpfx)tst-tlsmod7.so
$(objpfx)tst-tls11: $(objpfx)tst-tlsmod10.so $(objpfx)tst-tlsmod9.so
$(objpfx)tst-tls12: $(objpfx)tst-tlsmod12.so $(objpfx)tst-tlsmod11.so
$(objpfx)tst-tls13: $(libdl)
$(objpfx)tst-tls13.out: $(objpfx)tst-tlsmod13a.so
$(objpfx)tst-tls14: $(objpfx)tst-tlsmod14a.so $(libdl)
$(objpfx)tst-tls14.out: $(objpfx)tst-tlsmod14b.so
$(objpfx)tst-tls15: $(libdl)
$(objpfx)tst-tls15.out: $(objpfx)tst-tlsmod15a.so $(objpfx)tst-tlsmod15b.so
$(objpfx)tst-tls-dlinfo: $(libdl)
$(objpfx)tst-tls-dlinfo.out: $(objpfx)tst-tlsmod2.so
$(objpfx)tst-tls16: $(libdl)
$(objpfx)tst-tls16.out: $(objpfx)tst-tlsmod16a.so $(objpfx)tst-tlsmod16b.so
$(objpfx)tst-tls17: $(libdl)
$(objpfx)tst-tls17.out: $(objpfx)tst-tlsmod17b.so
$(patsubst %,$(objpfx)%.os,$(tlsmod17a-modules)): $(objpfx)tst-tlsmod17a%.os: tst-tlsmod17a.c
$(patsubst %,$(objpfx)%.so,$(tlsmod17a-modules)): $(objpfx)tst-tlsmod17a%.so: $(objpfx)ld.so
$(objpfx)tst-tlsmod17b.so: $(patsubst %,$(objpfx)%.so,$(tlsmod17a-modules))
$(objpfx)tst-tls18: $(libdl)
$(objpfx)tst-tls18.out: $(patsubst %,$(objpfx)%.so,$(tlsmod18a-modules))
$(patsubst %,$(objpfx)%.os,$(tlsmod18a-modules)): $(objpfx)tst-tlsmod18a%.os : tst-tlsmod18a.c
$(patsubst %,$(objpfx)%.so,$(tlsmod18a-modules)): $(objpfx)tst-tlsmod18a%.so: $(objpfx)ld.so
$(objpfx)tst-tls19: $(libdl)
$(objpfx)tst-tls19.out: $(objpfx)tst-tls19mod1.so
CFLAGS-tst-align.c = $(stack-align-test-flags)
CFLAGS-tst-align2.c = $(stack-align-test-flags)
CFLAGS-tst-alignmod.c = $(stack-align-test-flags)
CFLAGS-tst-alignmod2.c = $(stack-align-test-flags)
$(objpfx)tst-align: $(libdl)
$(objpfx)tst-align.out: $(objpfx)tst-alignmod.so
$(objpfx)tst-align2: $(objpfx)tst-alignmod2.so
$(objpfx)unload3: $(libdl)
$(objpfx)unload3.out: $(objpfx)unload3mod1.so $(objpfx)unload3mod2.so 		      $(objpfx)unload3mod3.so $(objpfx)unload3mod4.so
$(objpfx)unload4: $(libdl)
$(objpfx)unload4.out: $(objpfx)unload4mod1.so $(objpfx)unload4mod3.so
$(objpfx)unload5: $(libdl)
$(objpfx)unload5.out: $(objpfx)unload3mod1.so $(objpfx)unload3mod2.so 		      $(objpfx)unload3mod3.so $(objpfx)unload3mod4.so
$(objpfx)unload6: $(libdl)
$(objpfx)unload6.out: $(objpfx)unload6mod1.so $(objpfx)unload6mod2.so 		      $(objpfx)unload6mod3.so
$(objpfx)unload7: $(libdl)
$(objpfx)unload7.out: $(objpfx)unload7mod1.so $(objpfx)unload7mod2.so
unload7-ENV = MALLOC_PERTURB_=85
$(objpfx)unload8: $(libdl)
$(objpfx)unload8.out: $(objpfx)unload8mod1.so $(objpfx)unload8mod1x.so
$(objpfx)tst-tls9-static: $(common-objpfx)dlfcn/libdl.a
$(objpfx)tst-tls9-static.out: $(objpfx)tst-tlsmod5.so $(objpfx)tst-tlsmod6.so
$(objpfx)tst-execstack: $(libdl)
$(objpfx)tst-execstack.out: $(objpfx)tst-execstack-mod.so
LDFLAGS-tst-execstack = -Wl,-z,noexecstack
LDFLAGS-tst-execstack-mod = -Wl,-z,execstack
$(objpfx)tst-execstack-needed: $(objpfx)tst-execstack-mod.so
LDFLAGS-tst-execstack-needed = -Wl,-z,noexecstack
LDFLAGS-tst-execstack-prog = -Wl,-z,execstack
CFLAGS-tst-execstack-prog.c += -Wno-trampolines
CFLAGS-tst-execstack-mod.c += -Wno-trampolines
LDFLAGS-tst-array2 = $(no-as-needed)
LDFLAGS-tst-array5 = $(no-as-needed)
$(objpfx)tst-array1-cmp.out: tst-array1.exp $(objpfx)tst-array1.out
$(objpfx)tst-array1-static-cmp.out: tst-array1.exp 				    $(objpfx)tst-array1-static.out
$(objpfx)tst-array2: $(objpfx)tst-array2dep.so
$(objpfx)tst-array2-cmp.out: tst-array2.exp $(objpfx)tst-array2.out
$(objpfx)tst-array3-cmp.out: tst-array1.exp $(objpfx)tst-array3.out
$(objpfx)tst-array4: $(libdl)
$(objpfx)tst-array4.out: $(objpfx)tst-array2dep.so
$(objpfx)tst-array4-cmp.out: tst-array4.exp $(objpfx)tst-array4.out
$(objpfx)tst-array5: $(objpfx)tst-array5dep.so
$(objpfx)tst-array5-cmp.out: tst-array5.exp $(objpfx)tst-array5.out
$(objpfx)tst-array5-static-cmp.out: tst-array5-static.exp 				$(objpfx)tst-array5-static.out
CFLAGS-tst-pie1.c += $(pie-ccflag)
CFLAGS-tst-pie2.c += $(pie-ccflag)
$(objpfx)tst-pie1: $(objpfx)tst-piemod1.so
$(all-built-dso:=.dyn): %.dyn: %
$(objpfx)check-textrel.out: $(..)scripts/check-textrel.awk 			    $(all-built-dso:=.dyn)
$(objpfx)execstack-default: $(first-word $(wildcard $(sysdirs:%=%/stackinfo.h)))
$(all-built-dso:=.phdr): %.phdr: %
$(objpfx)check-execstack.out: $(..)scripts/check-execstack.awk 			      $(objpfx)execstack-default 			      $(all-built-dso:=.phdr)
$(objpfx)tst-dlmodcount: $(libdl)
$(objpfx)tst-dlmodcount.out: $(test-modules)
$(all-built-dso:=.jmprel): %.jmprel: % Makefile
$(objpfx)check-localplt.out: $(..)scripts/check-localplt.awk 			     $(..)scripts/localplt.awk 			     $(localplt-built-dso:=.jmprel) 			     localplt.data
$(objpfx)tst-dlopenrpathmod.so: $(libdl)
$(objpfx)tst-dlopenrpath: $(objpfx)tst-dlopenrpathmod.so $(libdl)
CFLAGS-tst-dlopenrpath.c += -DPFX=\"$(objpfx)\"
LDFLAGS-tst-dlopenrpathmod.so += -Wl,-rpath,\$$ORIGIN/test-subdir
$(objpfx)tst-dlopenrpath.out: $(objpfx)firstobj.so
$(objpfx)tst-deep1mod2.so: $(objpfx)tst-deep1mod3.so
$(objpfx)tst-deep1: $(libdl) $(objpfx)tst-deep1mod1.so
$(objpfx)tst-deep1.out: $(objpfx)tst-deep1mod2.so
LDFLAGS-tst-deep1 += -rdynamic
tst-deep1mod3.so-no-z-defs = yes
$(objpfx)tst-dlmopen1mod.so: $(libdl)
$(objpfx)tst-dlmopen1: $(libdl)
$(objpfx)tst-dlmopen1.out: $(objpfx)tst-dlmopen1mod.so
$(objpfx)tst-dlmopen2: $(libdl)
$(objpfx)tst-dlmopen2.out: $(objpfx)tst-dlmopen1mod.so
$(objpfx)tst-dlmopen3: $(libdl)
$(objpfx)tst-dlmopen3.out: $(objpfx)tst-dlmopen1mod.so
$(objpfx)tst-audit1.out: $(objpfx)tst-auditmod1.so
tst-audit1-ENV = LD_AUDIT=$(objpfx)tst-auditmod1.so
$(objpfx)tst-audit2: $(libdl)
$(objpfx)tst-audit2.out: $(objpfx)tst-auditmod1.so $(objpfx)tst-auditmod9b.so
CFLAGS-tst-audit2.c += -fno-builtin
tst-audit2-ENV = LD_AUDIT=$(objpfx)tst-auditmod1.so
$(objpfx)tst-audit9: $(libdl)
$(objpfx)tst-audit9.out: $(objpfx)tst-auditmod9a.so $(objpfx)tst-auditmod9b.so
tst-audit9-ENV = LD_AUDIT=$(objpfx)tst-auditmod9a.so
$(objpfx)tst-audit8: $(libm)
$(objpfx)tst-audit8.out: $(objpfx)tst-auditmod1.so
tst-audit8-ENV = LD_AUDIT=$(objpfx)tst-auditmod1.so
$(objpfx)tst-global1: $(libdl)
$(objpfx)tst-global1.out: $(objpfx)testobj6.so $(objpfx)testobj2.so
$(objpfx)order2: $(libdl)
$(objpfx)order2.out: $(objpfx)order2mod1.so $(objpfx)order2mod2.so
$(objpfx)order2-cmp.out: $(objpfx)order2.out
$(objpfx)order2mod1.so: $(objpfx)order2mod4.so
$(objpfx)order2mod4.so: $(objpfx)order2mod3.so
$(objpfx)order2mod2.so: $(objpfx)order2mod3.so
order2mod2.so-no-z-defs = yes
LDFLAGS-order2mod1.so = $(no-as-needed)
LDFLAGS-order2mod2.so = $(no-as-needed)
tst-stackguard1-ARGS = --command "$(host-test-program-cmd) --child"
tst-stackguard1-static-ARGS = --command "$(objpfx)tst-stackguard1-static --child"
tst-ptrguard1-ARGS = --command "$(host-test-program-cmd) --child"
CFLAGS-tst-ptrguard1-static.c = -DPTRGUARD_LOCAL
tst-ptrguard1-static-ARGS = --command "$(objpfx)tst-ptrguard1-static --child"
$(objpfx)tst-leaks1: $(libdl)
$(objpfx)tst-leaks1-mem.out: $(objpfx)tst-leaks1.out
$(objpfx)tst-leaks1-static: $(common-objpfx)dlfcn/libdl.a
$(objpfx)tst-leaks1-static-mem.out: $(objpfx)tst-leaks1-static.out
tst-leaks1-ENV = MALLOC_TRACE=$(objpfx)tst-leaks1.mtrace
tst-leaks1-static-ENV = MALLOC_TRACE=$(objpfx)tst-leaks1-static.mtrace
$(objpfx)tst-addr1: $(libdl)
$(objpfx)tst-thrlock: $(libdl) $(shared-thread-library)
$(objpfx)tst-dlopen-aout: $(libdl) $(shared-thread-library)
CFLAGS-ifuncmain1pic.c += $(pic-ccflag)
CFLAGS-ifuncmain1picstatic.c += $(pic-ccflag)
CFLAGS-ifuncmain1staticpic.c += $(pic-ccflag)
CFLAGS-ifuncdep1pic.c += $(pic-ccflag)
CFLAGS-ifuncmain1vispic.c += $(pic-ccflag)
CFLAGS-ifuncmain2pic.c += $(pic-ccflag)
CFLAGS-ifuncmain2picstatic.c += $(pic-ccflag)
CFLAGS-ifuncdep2pic.c += $(pic-ccflag)
CFLAGS-ifuncmain4picstatic.c += $(pic-ccflag)
CFLAGS-ifuncmain5pic.c += $(pic-ccflag)
CFLAGS-ifuncmain5picstatic.c += $(pic-ccflag)
CFLAGS-ifuncmain5staticpic.c += $(pic-ccflag)
CFLAGS-ifuncdep5pic.c += $(pic-ccflag)
CFLAGS-ifuncmain7pic.c += $(pic-ccflag)
CFLAGS-ifuncmain7picstatic.c += $(pic-ccflag)
LDFLAGS-ifuncmain3 = -Wl,-export-dynamic
CFLAGS-ifuncmain1pie.c += $(pie-ccflag)
CFLAGS-ifuncmain1vispie.c += $(pie-ccflag)
CFLAGS-ifuncmain1staticpie.c += $(pie-ccflag)
CFLAGS-ifuncmain5pie.c += $(pie-ccflag)
CFLAGS-ifuncmain6pie.c += $(pie-ccflag)
CFLAGS-ifuncmain7pie.c += $(pie-ccflag)
$(objpfx)ifuncmain1pie: $(objpfx)ifuncmod1.so
$(objpfx)ifuncmain1staticpie: $(objpfx)ifuncdep1pic.o
$(objpfx)ifuncmain1vispie: $(objpfx)ifuncmod1.so
$(objpfx)ifuncmain5pie: $(objpfx)ifuncmod5.so
$(objpfx)ifuncmain6pie: $(objpfx)ifuncmod6.so
$(objpfx)ifuncmain1: $(addprefix $(objpfx),ifuncmod1.so)
$(objpfx)ifuncmain1pic: $(addprefix $(objpfx),ifuncmod1.so)
$(objpfx)ifuncmain1staticpic: $(addprefix $(objpfx),ifuncdep1pic.o)
$(objpfx)ifuncmain1static: $(addprefix $(objpfx),ifuncdep1.o)
$(objpfx)ifuncmain1picstatic: $(addprefix $(objpfx),ifuncdep1pic.o)
$(objpfx)ifuncmain1vis: $(addprefix $(objpfx),ifuncmod1.so)
$(objpfx)ifuncmain1vispic: $(addprefix $(objpfx),ifuncmod1.so)
$(objpfx)ifuncmain2: $(addprefix $(objpfx),ifuncdep2.o)
$(objpfx)ifuncmain2pic: $(addprefix $(objpfx),ifuncdep2pic.o)
$(objpfx)ifuncmain2static: $(addprefix $(objpfx),ifuncdep2.o)
$(objpfx)ifuncmain2picstatic: $(addprefix $(objpfx),ifuncdep2pic.o)
$(objpfx)ifuncmain3: $(libdl)
$(objpfx)ifuncmain3.out: $(objpfx)ifuncmod3.so
$(objpfx)ifuncmain5: $(addprefix $(objpfx),ifuncmod5.so)
$(objpfx)ifuncmain5pic: $(addprefix $(objpfx),ifuncmod5.so)
$(objpfx)ifuncmain5static: $(addprefix $(objpfx),ifuncdep5.o)
$(objpfx)ifuncmain5staticpic: $(addprefix $(objpfx),ifuncdep5pic.o)
$(objpfx)ifuncmain5picstatic: $(addprefix $(objpfx),ifuncdep5pic.o)
$(objpfx)tst-unique1: $(libdl)
$(objpfx)tst-unique1.out: $(objpfx)tst-unique1mod1.so 			  $(objpfx)tst-unique1mod2.so
$(objpfx)tst-unique2: $(libdl) $(objpfx)tst-unique2mod1.so
$(objpfx)tst-unique2.out: $(objpfx)tst-unique2mod2.so
$(objpfx)tst-unique3: $(libdl) $(objpfx)tst-unique3lib.so
$(objpfx)tst-unique3.out: $(objpfx)tst-unique3lib2.so
$(objpfx)tst-unique4: $(objpfx)tst-unique4lib.so
$(objpfx)tst-nodelete: $(libdl)
$(objpfx)tst-nodelete.out: $(objpfx)tst-nodelete-uniquemod.so 			   $(objpfx)tst-nodelete-rtldmod.so 			   $(objpfx)tst-nodelete-zmod.so
LDFLAGS-tst-nodelete = -rdynamic
LDFLAGS-tst-nodelete-zmod.so = -Wl,--enable-new-dtags,-z,nodelete
$(objpfx)tst-nodelete2: $(libdl)
$(objpfx)tst-nodelete2.out: $(objpfx)tst-nodelete2mod.so
LDFLAGS-tst-nodelete2 = -rdynamic
$(objpfx)tst-initorder-cmp.out: tst-initorder.exp $(objpfx)tst-initorder.out
$(objpfx)tst-initorder2: $(objpfx)tst-initorder2a.so $(objpfx)tst-initorder2d.so $(objpfx)tst-initorder2c.so
$(objpfx)tst-initorder2a.so: $(objpfx)tst-initorder2b.so
$(objpfx)tst-initorder2b.so: $(objpfx)tst-initorder2c.so
$(objpfx)tst-initorder2c.so: $(objpfx)tst-initorder2d.so
LDFLAGS-tst-initorder2 = $(no-as-needed)
LDFLAGS-tst-initorder2a.so = $(no-as-needed)
LDFLAGS-tst-initorder2b.so = $(no-as-needed)
LDFLAGS-tst-initorder2c.so = $(no-as-needed)
$(objpfx)tst-initorder2$o.os: tst-initorder2.c; $$(compile-command.c) -DNAME=\"$o\"
$(objpfx)tst-initorder2-cmp.out: tst-initorder2.exp $(objpfx)tst-initorder2.out
$(objpfx)tst-relsort1: $(libdl)
$(objpfx)tst-relsort1mod1.so: $(libm) $(objpfx)tst-relsort1mod2.so
$(objpfx)tst-relsort1mod2.so: $(libm)
$(objpfx)tst-relsort1.out: $(objpfx)tst-relsort1mod1.so 			   $(objpfx)tst-relsort1mod2.so
$(objpfx)tst-unused-dep.out: $(objpfx)testobj1.so
$(objpfx)tst-unused-dep-cmp.out: $(objpfx)tst-unused-dep.out
$(objpfx)tst-audit11.out: $(objpfx)tst-auditmod11.so $(objpfx)tst-audit11mod1.so
$(objpfx)tst-audit11: $(libdl)
tst-audit11-ENV = LD_AUDIT=$(objpfx)tst-auditmod11.so
$(objpfx)tst-audit11mod1.so: $(objpfx)tst-audit11mod2.so
LDFLAGS-tst-audit11mod2.so = -Wl,--version-script=tst-audit11mod2.map,-soname,tst-audit11mod2.so
$(objpfx)tst-audit12.out: $(objpfx)tst-auditmod12.so $(objpfx)tst-audit12mod1.so $(objpfx)tst-audit12mod3.so
$(objpfx)tst-audit12: $(libdl)
tst-audit12-ENV = LD_AUDIT=$(objpfx)tst-auditmod12.so
$(objpfx)tst-audit12mod1.so: $(objpfx)tst-audit12mod2.so
LDFLAGS-tst-audit12mod2.so = -Wl,--version-script=tst-audit12mod2.map
tst-prelink-ENV = LD_TRACE_PRELINKING=1
$(objpfx)tst-prelink-conflict.out: $(objpfx)tst-prelink.out
$(objpfx)tst-prelink-cmp.out: tst-prelink.exp 			      $(objpfx)tst-prelink-conflict.out
tests = tst-tls1 tst-tls2 tst-tls9 tst-leaks1 	tst-array1 tst-array2 tst-array3 tst-array4 tst-array5 	tst-auxv
tests-static = tst-tls1-static tst-tls2-static tst-stackguard1-static 	       tst-leaks1-static tst-array1-static tst-array5-static 	       tst-ptrguard1-static tst-dl-iter-static 	       tst-tlsalign-static tst-tlsalign-extern-static
tests-static += tst-tls9-static
tests += $(tests-static)
tests += loadtest restest1 preloadtest loadfail multiload origtest resolvfail 	 constload1 order noload filter unload 	 reldep reldep2 reldep3 reldep4 nodelete nodelete2 	 nodlopen nodlopen2 neededtest neededtest2 	 neededtest3 neededtest4 unload2 lateglobal initfirst global 	 restest2 next dblload dblunload reldep5 reldep6 reldep7 reldep8 	 circleload1 tst-tls3 tst-tls4 tst-tls5 tst-tls6 tst-tls7 tst-tls8 	 tst-tls10 tst-tls11 tst-tls12 tst-tls13 tst-tls14 tst-tls15 	 tst-tls16 tst-tls17 tst-tls18 tst-tls19 tst-tls-dlinfo 	 tst-align tst-align2 $(tests-execstack-$(have-z-execstack)) 	 tst-dlmodcount tst-dlopenrpath tst-deep1 	 tst-dlmopen1 tst-dlmopen2 tst-dlmopen3 	 unload3 unload4 unload5 unload6 unload7 unload8 tst-global1 order2 	 tst-audit1 tst-audit2 tst-audit8 tst-audit9 	 tst-stackguard1 tst-addr1 tst-thrlock 	 tst-unique1 tst-unique2 $(if $(CXX),tst-unique3 tst-unique4 	 tst-nodelete) 	 tst-initorder tst-initorder2 tst-relsort1 tst-null-argv 	 tst-ptrguard1 tst-tlsalign tst-tlsalign-extern tst-nodelete-opened 	 tst-nodelete2 tst-audit11 tst-audit12
tests += tst-dlopen-aout
test-srcs = tst-pathopt
tests-execstack-yes = tst-execstack tst-execstack-needed tst-execstack-prog
tests-special += $(objpfx)tst-leaks1-mem.out 		 $(objpfx)tst-leaks1-static-mem.out $(objpfx)noload-mem.out
modules-names = testobj1 testobj2 testobj3 testobj4 testobj5 testobj6 		testobj1_1 failobj constload2 constload3 unloadmod 		dep1 dep2 dep3 dep4 vismod1 vismod2 vismod3 		nodelmod1 nodelmod2 nodelmod3 nodelmod4 		nodel2mod1 nodel2mod2 nodel2mod3 		nodlopenmod nodlopenmod2 filtmod1 filtmod2 		reldepmod1 reldepmod2 reldepmod3 reldepmod4 nextmod1 nextmod2 		reldep4mod1 reldep4mod2 reldep4mod3 reldep4mod4 		neededobj1 neededobj2 neededobj3 neededobj4 		neededobj5 neededobj6 firstobj globalmod1 		unload2mod unload2dep ltglobmod1 ltglobmod2 pathoptobj 		dblloadmod1 dblloadmod2 dblloadmod3 reldepmod5 reldepmod6 		reldep6mod0 reldep6mod1 reldep6mod2 reldep6mod3 reldep6mod4 		reldep7mod1 reldep7mod2 		tst-tlsmod1 tst-tlsmod2 tst-tlsmod3 tst-tlsmod4 		tst-tlsmod5 tst-tlsmod6 tst-tlsmod7 tst-tlsmod8 		tst-tlsmod9 tst-tlsmod10 tst-tlsmod11 tst-tlsmod12 		tst-tlsmod13 tst-tlsmod13a tst-tlsmod14a tst-tlsmod14b 		tst-tlsmod15a tst-tlsmod15b tst-tlsmod16a tst-tlsmod16b 		$(tlsmod17a-modules) tst-tlsmod17b $(tlsmod18a-modules) 		tst-tls19mod1 tst-tls19mod2 tst-tls19mod3 		circlemod1 circlemod1a circlemod2 circlemod2a 		circlemod3 circlemod3a 		reldep8mod1 reldep8mod2 reldep8mod3 		reldep9mod1 reldep9mod2 reldep9mod3 		tst-alignmod tst-alignmod2 		$(modules-execstack-$(have-z-execstack)) 		tst-dlopenrpathmod tst-deep1mod1 tst-deep1mod2 tst-deep1mod3 		tst-dlmopen1mod tst-auditmod1 		unload3mod1 unload3mod2 unload3mod3 unload3mod4 		unload4mod1 unload4mod2 unload4mod3 unload4mod4 		unload6mod1 unload6mod2 unload6mod3 		unload7mod1 unload7mod2 		unload8mod1 unload8mod1x unload8mod2 unload8mod3 		order2mod1 order2mod2 order2mod3 order2mod4 		tst-unique1mod1 tst-unique1mod2 		tst-unique2mod1 tst-unique2mod2 		tst-auditmod9a tst-auditmod9b 		$(if $(CXX),tst-unique3lib tst-unique3lib2 tst-unique4lib 		  tst-nodelete-uniquemod tst-nodelete-rtldmod 		  tst-nodelete-zmod) 		tst-initordera1 tst-initorderb1 		tst-initordera2 tst-initorderb2 		tst-initordera3 tst-initordera4 		tst-initorder2a tst-initorder2b tst-initorder2c 		tst-initorder2d 		tst-relsort1mod1 tst-relsort1mod2 tst-array2dep 		tst-array5dep tst-null-argv-lib 		tst-tlsalign-lib tst-nodelete-opened-lib tst-nodelete2mod 		tst-audit11mod1 tst-audit11mod2 tst-auditmod11 		tst-audit12mod1 tst-audit12mod2 tst-audit12mod3 tst-auditmod12
modules-names += tst-protected1moda tst-protected1modb
tests += tst-protected1a tst-protected1b
modules-names += tst-piemod1
tests += tst-pie1 tst-pie2
tests-pie += tst-pie1 tst-pie2
tests += vismain
tests-pie += vismain
modules-execstack-yes = tst-execstack-mod
modules-names-nobuild := filtmod1
tests-static += ifuncmain1static ifuncmain1picstatic 		ifuncmain2static ifuncmain2picstatic 		ifuncmain4static ifuncmain4picstatic 		ifuncmain5static ifuncmain5picstatic 		ifuncmain7static ifuncmain7picstatic
tests += ifuncmain1 ifuncmain1pic ifuncmain1vis ifuncmain1vispic 	 ifuncmain1staticpic 	 ifuncmain2 ifuncmain2pic ifuncmain3 ifuncmain4 	 ifuncmain5 ifuncmain5pic ifuncmain5staticpic 	 ifuncmain7 ifuncmain7pic
tests += $(ifunc-pie-tests)
tests-pie += $(ifunc-pie-tests)
modules-names += ifuncmod1 ifuncmod3 ifuncmod5 ifuncmod6
tests-special += $(objpfx)tst-pathopt.out $(objpfx)tst-rtld-load-self.out
tests-special += $(objpfx)check-textrel.out $(objpfx)check-execstack.out 		 $(objpfx)check-localplt.out
tests-special += $(objpfx)order-cmp.out $(objpfx)tst-array1-cmp.out 		 $(objpfx)tst-array1-static-cmp.out 		 $(objpfx)tst-array2-cmp.out $(objpfx)tst-array3-cmp.out 		 $(objpfx)tst-array4-cmp.out $(objpfx)tst-array5-cmp.out 		 $(objpfx)tst-array5-static-cmp.out $(objpfx)order2-cmp.out 		 $(objpfx)tst-initorder-cmp.out 		 $(objpfx)tst-initorder2-cmp.out $(objpfx)tst-unused-dep.out 		 $(objpfx)tst-unused-dep-cmp.out
tests-special += $(objpfx)check-abi-ld.out
tests += tst-prelink
tests-special += $(objpfx)tst-prelink-cmp.out
tests: $(test-modules)
