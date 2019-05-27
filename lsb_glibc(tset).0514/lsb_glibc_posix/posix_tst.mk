$(objpfx)globtest.out: globtest.sh $(objpfx)globtest
$(objpfx)wordexp-tst.out: wordexp-tst.sh $(objpfx)wordexp-test
$(objpfx)bug-regex1.out: $(gen-locales)
$(objpfx)bug-regex4.out: $(gen-locales)
$(objpfx)bug-regex5.out: $(gen-locales)
$(objpfx)bug-regex6.out: $(gen-locales)
$(objpfx)bug-regex17.out: $(gen-locales)
$(objpfx)bug-regex18.out: $(gen-locales)
$(objpfx)bug-regex19.out: $(gen-locales)
$(objpfx)bug-regex20.out: $(gen-locales)
$(objpfx)bug-regex22.out: $(gen-locales)
$(objpfx)bug-regex23.out: $(gen-locales)
$(objpfx)bug-regex25.out: $(gen-locales)
$(objpfx)bug-regex26.out: $(gen-locales)
$(objpfx)bug-regex30.out: $(gen-locales)
$(objpfx)bug-regex32.out: $(gen-locales)
$(objpfx)bug-regex33.out: $(gen-locales)
$(objpfx)bug-regex34.out: $(gen-locales)
$(objpfx)bug-regex35.out: $(gen-locales)
$(objpfx)tst-fnmatch.out: $(gen-locales)
$(objpfx)tst-fnmatch4.out: $(gen-locales)
$(objpfx)tst-fnmatch5.out: $(gen-locales)
$(objpfx)tst-regex.out: $(gen-locales)
$(objpfx)tst-regex2.out: $(gen-locales)
$(objpfx)tst-regexloc.out: $(gen-locales)
$(objpfx)tst-rxspencer.out: $(gen-locales)
$(objpfx)tst-rxspencer-no-utf8.out: $(gen-locales)
uname.c: $(objpfx)config-name.h
$(objpfx)config-name.h: $(..)scripts/config-uname.sh $(common-objpfx)config.make
CFLAGS-getaddrinfo.c = -DRESOLVER -fexceptions
CFLAGS-pause.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pread.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pread64.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pwrite.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-pwrite64.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-sleep.c = -fexceptions
CFLAGS-wait.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-waitid.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-waitpid.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-getopt.c = -fexceptions
CFLAGS-wordexp.c = -fexceptions
CFLAGS-wordexp.os = -fomit-frame-pointer
CFLAGS-sysconf.c = -fexceptions -DGETCONF_DIR='"$(libexecdir)/getconf"'
CFLAGS-pathconf.c = -fexceptions
CFLAGS-fpathconf.c = -fexceptions
CFLAGS-spawn.c = -fexceptions
CFLAGS-spawn.os = -fomit-frame-pointer
CFLAGS-spawnp.c = -fexceptions
CFLAGS-spawnp.os = -fomit-frame-pointer
CFLAGS-spawni.c = -fexceptions
CFLAGS-spawni.os = -fomit-frame-pointer
CFLAGS-pause.c = -fexceptions
CFLAGS-glob.c = $(uses-callbacks) -fexceptions
CFLAGS-glob64.c = $(uses-callbacks) -fexceptions
CFLAGS-getconf.c = -DGETCONF_DIR='"$(libexecdir)/getconf"'
CFLAGS-execve.os = -fomit-frame-pointer
CFLAGS-fexecve.os = -fomit-frame-pointer
CFLAGS-execv.os = -fomit-frame-pointer
CFLAGS-execle.os = -fomit-frame-pointer
CFLAGS-execl.os = -fomit-frame-pointer
CFLAGS-execvp.os = -fomit-frame-pointer
CFLAGS-execlp.os = -fomit-frame-pointer
tstgetopt-ARGS = -a -b -cfoobar --required foobar --optional=bazbug 		--none random --col --color --colour
tst-exec-ARGS = -- $(host-test-program-cmd)
tst-exec-static-ARGS = $(tst-exec-ARGS)
tst-spawn-ARGS = -- $(host-test-program-cmd)
tst-spawn-static-ARGS = $(tst-spawn-ARGS)
tst-dir-ARGS = `pwd` `cd $(common-objdir)/$(subdir); pwd` `cd $(common-objdir); pwd` $(objpfx)tst-dir
tst-chmod-ARGS = $(objdir)
tst-vfork3-ARGS = --test-dir=$(objpfx)
tst-rxspencer-ARGS = --utf8 rxspencer/tests
tst-rxspencer-no-utf8-ARGS = rxspencer/tests
tst-pcre-ARGS = PCRE.tests
tst-boost-ARGS = BOOST.tests
bug-glob1-ARGS = "$(objpfx)"
tst-execvp3-ARGS = --test-dir=$(objpfx)
testcases.h: TESTS TESTS2C.sed
ptestcases.h: PTESTS PTESTS2C.sed
$(objpfx)annexc.out: $(objpfx)annexc
$(objpfx)annexc: annexc.c
tst-fnmatch-ENV += MALLOC_TRACE=$(objpfx)tst-fnmatch.mtrace
$(objpfx)tst-fnmatch-mem.out: $(objpfx)tst-fnmatch.out
bug-regex2-ENV = MALLOC_TRACE=$(objpfx)bug-regex2.mtrace
$(objpfx)bug-regex2-mem.out: $(objpfx)bug-regex2.out
bug-regex14-ENV = MALLOC_TRACE=$(objpfx)bug-regex14.mtrace
$(objpfx)bug-regex14-mem.out: $(objpfx)bug-regex14.out
bug-regex21-ENV = MALLOC_TRACE=$(objpfx)bug-regex21.mtrace
$(objpfx)bug-regex21-mem.out: $(objpfx)bug-regex21.out
bug-regex31-ENV = MALLOC_TRACE=$(objpfx)bug-regex31.mtrace
$(objpfx)bug-regex31-mem.out: $(objpfx)bug-regex31.out
bug-regex36-ENV = MALLOC_TRACE=$(objpfx)bug-regex36.mtrace
$(objpfx)bug-regex36-mem.out: $(objpfx)bug-regex36.out
tst-vfork3-ENV = MALLOC_TRACE=$(objpfx)tst-vfork3.mtrace
$(objpfx)tst-vfork3-mem.out: $(objpfx)tst-vfork3.out
tst-rxspencer-no-utf8-ENV += MALLOC_TRACE=$(objpfx)tst-rxspencer-no-utf8.mtrace
$(objpfx)tst-rxspencer-no-utf8-mem.out: $(objpfx)tst-rxspencer-no-utf8.out
tst-pcre-ENV = MALLOC_TRACE=$(objpfx)tst-pcre.mtrace
$(objpfx)tst-pcre-mem.out: $(objpfx)tst-pcre.out
tst-boost-ENV = MALLOC_TRACE=$(objpfx)tst-boost.mtrace
$(objpfx)tst-boost-mem.out: $(objpfx)tst-boost.out
$(objpfx)tst-getconf.out: tst-getconf.sh $(objpfx)getconf
$(objpfx)bug-ga2-mem.out: $(objpfx)bug-ga2.out
bug-ga2-ENV = MALLOC_TRACE=$(objpfx)bug-ga2.mtrace
bug-glob2-ENV = MALLOC_TRACE=$(objpfx)bug-glob2.mtrace
$(objpfx)bug-glob2-mem.out: $(objpfx)bug-glob2.out
$(inst_libexecdir)/getconf: $(inst_bindir)/getconf 			    $(objpfx)getconf.speclist FORCE
$(objpfx)getconf.speclist: getconf-speclist.c posix-envs.def
others: $(objpfx)getconf.speclist
$(objpfx)posix-conf-vars-def.h: $(..)scripts/gen-posix-conf-vars.awk 				posix-conf-vars.list Makefile
tests		:= tstgetopt testfnm runtests runptests	     		   tst-preadwrite tst-preadwrite64 test-vfork regexbug1 		   tst-mmap tst-mmap-offset tst-getaddrinfo tst-truncate 		   tst-truncate64 tst-fork tst-fnmatch tst-regexloc tst-dir 		   tst-chmod bug-regex1 bug-regex2 bug-regex3 bug-regex4 		   tst-gnuglob tst-regex bug-regex5 bug-regex6 bug-regex7 		   bug-regex8 bug-regex9 bug-regex10 bug-regex11 bug-regex12 		   bug-regex13 bug-regex14 bug-regex15 bug-regex16 		   bug-regex17 bug-regex18 bug-regex19 bug-regex20 		   bug-regex21 bug-regex22 bug-regex23 bug-regex24 		   bug-regex25 bug-regex26 bug-regex27 bug-regex28 		   bug-regex29 bug-regex30 bug-regex31 bug-regex32 		   bug-regex33 tst-nice tst-nanosleep tst-regex2 		   transbug tst-rxspencer tst-pcre tst-boost 		   bug-ga1 tst-vfork1 tst-vfork2 tst-vfork3 tst-waitid 		   tst-getaddrinfo2 bug-glob1 bug-glob2 bug-glob3 tst-sysconf 		   tst-execvp1 tst-execvp2 tst-execlp1 tst-execlp2 		   tst-execv1 tst-execv2 tst-execl1 tst-execl2 		   tst-execve1 tst-execve2 tst-execle1 tst-execle2 		   tst-execvp3 tst-execvp4 tst-rfc3484 tst-rfc3484-2 		   tst-rfc3484-3 		   tst-getaddrinfo3 tst-fnmatch2 tst-cpucount tst-cpuset 		   bug-getopt1 bug-getopt2 bug-getopt3 bug-getopt4 		   bug-getopt5 tst-getopt_long1 bug-regex34 bug-regex35 		   tst-pathconf tst-getaddrinfo4 tst-rxspencer-no-utf8 		   tst-fnmatch3 bug-regex36 tst-getaddrinfo5
xtests		:= bug-ga2
test-srcs	:= globtest
tests           += wordexp-test tst-exec tst-spawn
tests-static	= tst-exec-static tst-spawn-static
tests		+= $(tests-static)
tests-special += $(objpfx)globtest.out $(objpfx)wordexp-tst.out
tests-special += $(objpfx)annexc.out
tests-special += $(objpfx)bug-regex2-mem.out $(objpfx)bug-regex14-mem.out 		 $(objpfx)bug-regex21-mem.out $(objpfx)bug-regex31-mem.out 		 $(objpfx)tst-rxspencer-no-utf8-mem.out $(objpfx)tst-pcre-mem.out 		 $(objpfx)tst-boost-mem.out $(objpfx)tst-getconf.out 		 $(objpfx)bug-glob2-mem.out $(objpfx)tst-vfork3-mem.out 		 $(objpfx)tst-fnmatch-mem.out $(objpfx)bug-regex36-mem.out
xtests-special += $(objpfx)bug-ga2-mem.out
