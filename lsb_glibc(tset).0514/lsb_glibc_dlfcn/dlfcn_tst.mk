failtestmod.so-no-z-defs = yes
glreflib2.so-no-z-defs = yes
errmsg1mod.so-no-z-defs = yes
tststatic-ENV = LD_LIBRARY_PATH=$(objpfx):$(common-objpfx):$(common-objpfx)elf
tststatic2-ENV = $(tststatic-ENV)
tststatic3-ENV = $(tststatic-ENV)
tststatic4-ENV = $(tststatic-ENV)
tststatic5-ENV = $(tststatic-ENV)
tests: $(test-modules)
$(objpfx)glrefmain: $(libdl)
$(objpfx)glrefmain.out: $(objpfx)glrefmain 			$(objpfx)glreflib1.so $(objpfx)glreflib2.so
$(objpfx)failtest: $(libdl)
$(objpfx)failtest.out: $(objpfx)failtestmod.so
$(objpfx)tst-dladdr: $(libdl)
$(objpfx)tst-dladdr.out: $(objpfx)glreflib1.so
$(objpfx)tst-dlinfo: $(libdl)
$(objpfx)tst-dlinfo.out: $(objpfx)glreflib3.so
LDFLAGS-glreflib3.so = -Wl,-rpath,:
LDFLAGS-default = $(LDFLAGS-rdynamic)
$(objpfx)default: $(libdl) $(objpfx)defaultmod1.so $(objpfx)defaultmod2.so
$(objpfx)defaultmod1.so: $(libdl)
LDFLAGS-defaultmod2.so = $(LDFLAGS-Bsymbolic)
$(objpfx)defaultmod2.so: $(libdl)
$(objpfx)errmsg1: $(libdl)
$(objpfx)errmsg1.out: $(objpfx)errmsg1 $(objpfx)errmsg1mod.so
$(objpfx)tstatexit: $(libdl)
$(objpfx)tstatexit.out: $(objpfx)tstatexit $(objpfx)modatexit.so
$(objpfx)tstcxaatexit: $(libdl)
$(objpfx)tstcxaatexit.out: $(objpfx)tstcxaatexit $(objpfx)modcxaatexit.so
$(objpfx)tststatic: $(objpfx)libdl.a
$(objpfx)tststatic.out: $(objpfx)tststatic $(objpfx)modstatic.so
$(objpfx)tststatic2: $(objpfx)libdl.a
$(objpfx)tststatic2.out: $(objpfx)tststatic2 $(objpfx)modstatic.so 			 $(objpfx)modstatic2.so
$(objpfx)modstatic2.so: $(libdl)
$(objpfx)tststatic3: $(objpfx)libdl.a
$(objpfx)tststatic3.out: $(objpfx)tststatic3 $(objpfx)modstatic3.so
$(objpfx)tststatic4: $(objpfx)libdl.a
$(objpfx)tststatic4.out: $(objpfx)tststatic4 $(objpfx)modstatic3.so
$(objpfx)tststatic5: $(objpfx)libdl.a
$(objpfx)tststatic5.out: $(objpfx)tststatic5 $(objpfx)modstatic5.so
$(objpfx)bug-dlopen1: $(libdl)
$(objpfx)bug-dlsym1: $(libdl) $(objpfx)bug-dlsym1-lib2.so
$(objpfx)bug-dlsym1.out: $(objpfx)bug-dlsym1-lib1.so 			 $(objpfx)bug-dlsym1-lib2.so
$(objpfx)bug-dlsym1-lib1.so: $(objpfx)bug-dlsym1-lib2.so
$(objpfx)bug-atexit1: $(libdl)
$(objpfx)bug-atexit1.out: $(objpfx)bug-atexit1-lib.so
$(objpfx)bug-atexit2: $(libdl)
$(objpfx)bug-atexit2.out: $(objpfx)bug-atexit2-lib.so
$(objpfx)bug-atexit3: $(libdl)
$(objpfx)bug-atexit3.out: $(objpfx)bug-atexit3-lib.so
$(objpfx)bug-dl-leaf: $(objpfx)bug-dl-leaf-lib.so
$(objpfx)bug-dl-leaf.out: $(objpfx)bug-dl-leaf-lib-cb.so
$(objpfx)bug-dl-leaf-lib.so: $(libdl)
$(objpfx)bug-dl-leaf-lib-cb.so: $(objpfx)bug-dl-leaf-lib.so
$(objpfx)tst-rec-dlopen: $(libdl)
$(objpfx)tst-rec-dlopen.out: $(objpfx)moddummy1.so $(objpfx)moddummy2.so
tests = glrefmain failtest tst-dladdr default errmsg1 tstcxaatexit 	bug-dlopen1 bug-dlsym1 tst-dlinfo bug-atexit1 bug-atexit2 	bug-atexit3 tstatexit bug-dl-leaf tst-rec-dlopen
modules-names = glreflib1 glreflib2 glreflib3 failtestmod defaultmod1 		defaultmod2 errmsg1mod modatexit modcxaatexit 		bug-dlsym1-lib1 bug-dlsym1-lib2 bug-atexit1-lib 		bug-atexit2-lib bug-dl-leaf-lib 		bug-dl-leaf-lib-cb moddummy1 moddummy2
tests += tststatic tststatic2 tststatic3 tststatic4 tststatic5
tests-static += tststatic tststatic2 tststatic3 tststatic4 tststatic5
modules-names += modstatic modstatic2 modstatic3 modstatic5
modules-names += bug-atexit3-lib
tests-unsupported += bug-atexit3
tests: $(test-modules)
