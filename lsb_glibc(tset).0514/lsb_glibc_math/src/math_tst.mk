tests = test-matherr test-fenv atest-exp atest-sincos atest-exp2 basic-test 	test-misc test-fpucw test-fpucw-ieee tst-definitions test-tgmath 	test-tgmath-ret bug-nextafter bug-nexttoward bug-tgmath1 	test-tgmath-int test-tgmath2 test-powl tst-CMPLX tst-CMPLX2 test-snan 	test-fenv-tls test-fenv-preserve test-fenv-return test-fenvinline 	test-nearbyint-except test-fenv-clear test-signgam-finite 	test-signgam-finite-c99 test-signgam-finite-c11 	test-nearbyint-except-2 test-signgam-uchar test-signgam-uchar-init 	test-signgam-uint test-signgam-uint-init test-signgam-ullong 	test-signgam-ullong-init test-nan-overflow test-nan-payload  	$(tests-static)
tests-static = test-fpucw-static test-fpucw-ieee-static 	       test-signgam-uchar-static test-signgam-uchar-init-static 	       test-signgam-uint-static test-signgam-uint-init-static 	       test-signgam-ullong-static test-signgam-ullong-init-static
tests += $(libm-tests)
install_subdir: $(inst_libdir)/libm.so
$(inst_libdir)/libm.so: $(common-objpfx)format.lds 			$(libm) 			$(libmvec) 			$(+force)
$(addprefix $(objpfx), $(libm-tests-generated)): $(objpfx)libm-test.stmp
$(objpfx)libm-test.stmp: $(ulps-file) libm-test.inc gen-libm-test.pl 			 gen-libm-have-vector-test.sh auto-libm-test-out
$(objpfx)test-float.o: $(objpfx)libm-test.stmp
$(objpfx)test-ifloat.o: $(objpfx)libm-test.stmp
$(objpfx)test-float-finite.o: $(objpfx)libm-test.stmp
$(objpfx)test-double.o: $(objpfx)libm-test.stmp
$(objpfx)test-idouble.o: $(objpfx)libm-test.stmp
$(objpfx)test-double-finite.o: $(objpfx)libm-test.stmp
$(objpfx)test-ldouble.o: $(objpfx)libm-test.stmp
$(objpfx)test-ildoubl.o: $(objpfx)libm-test.stmp
$(objpfx)test-ldouble-finite.o: $(objpfx)libm-test.stmp
CFLAGS-test-double-vlen2.c = $(libm-test-vec-cflags)
CFLAGS-test-double-vlen4.c = $(libm-test-vec-cflags)
CFLAGS-test-double-vlen4-wrappers.c = $(double-vlen4-arch-ext-cflags)
CFLAGS-test-double-vlen8.c = $(libm-test-vec-cflags)
CFLAGS-test-double-vlen8-wrappers.c = $(double-vlen8-arch-ext-cflags)
CFLAGS-test-float-vlen4.c = $(libm-test-vec-cflags)
CFLAGS-test-float-vlen8.c = $(libm-test-vec-cflags)
CFLAGS-test-float-vlen8-wrappers.c = $(float-vlen8-arch-ext-cflags)
CFLAGS-test-float-vlen16.c = $(libm-test-vec-cflags)
CFLAGS-test-float-vlen16-wrappers.c = $(float-vlen16-arch-ext-cflags)
CFLAGS-test-float.c = $(libm-test-no-inline-cflags)
CFLAGS-test-float-finite.c = $(libm-test-finite-cflags)
CFLAGS-test-double.c = $(libm-test-no-inline-cflags)
CFLAGS-test-double-finite.c = $(libm-test-finite-cflags)
CFLAGS-test-ldouble.c = $(libm-test-no-inline-cflags)
CFLAGS-test-ldouble-finite.c = $(libm-test-finite-cflags)
CFLAGS-test-tgmath.c = -fno-builtin
# while to compile it. See: http://llvm.org/bugs/show_bug.cgi?id=14106 and
CFLAGS-test-tgmath2.c = -fno-builtin
CFLAGS-test-tgmath-ret.c = -fno-builtin
CFLAGS-test-powl.c = -fno-builtin
CFLAGS-test-snan.c = -fsignaling-nans
CFLAGS-test-signgam-finite.c = -ffinite-math-only
CFLAGS-test-signgam-finite-c99.c = -ffinite-math-only -std=c99
CFLAGS-test-signgam-finite-c11.c = -ffinite-math-only -std=c11
CFLAGS-test-signgam-uchar.c = -std=c99
CFLAGS-test-signgam-uchar-init.c = -std=c99
CFLAGS-test-signgam-uchar-static.c = -std=c99
CFLAGS-test-signgam-uchar-init-static.c = -std=c99
CFLAGS-test-signgam-uint.c = -std=c99
CFLAGS-test-signgam-uint-init.c = -std=c99
CFLAGS-test-signgam-uint-static.c = -std=c99
CFLAGS-test-signgam-uint-init-static.c = -std=c99
CFLAGS-test-signgam-ullong.c = -std=c99
CFLAGS-test-signgam-ullong-init.c = -std=c99
CFLAGS-test-signgam-ullong-static.c = -std=c99
CFLAGS-test-signgam-ullong-init-static.c = -std=c99
CFLAGS-test-math-isinff.cc = -std=gnu++11
$(addprefix $(objpfx), $(addsuffix .o, $(libm-vec-tests))): $(objpfx)libm-test.stmp
.PHONY: regen-ulps
regen-ulps: $(addprefix $(objpfx),$(libm-tests))
$(objpfx)m_%$o: s_%.c $(before-compile); $$(compile-command.c)
$(objpfx)libieee.a: $(objpfx)ieee-math.o
$(addprefix $(objpfx),$(filter-out $(tests-static) $(libm-vec-tests),$(tests))): $(libm) 
$(addprefix $(objpfx),$(tests-static)): /usr/lib/x86_64-linux-gnu/libm.a   
$(addprefix $(objpfx), $(libm-vec-tests)): $(objpfx)%: $(objpfx)%-wrappers.o $(libm) 					   $(libmvec)

gmp-objs = $(patsubst %,./%.o,\
		      add_n sub_n cmp addmul_1 mul_1 mul_n divmod_1 \
		      lshift rshift mp_clz_tab udiv_qrnnd inlines \
		      $(gmp-sysdep_routines))
$(objpfx)atest-exp: $(gmp-objs)
$(objpfx)atest-sincos: $(gmp-objs)
$(objpfx)atest-exp2: $(gmp-objs)
$(objpfx)test-fenv-tls: $(shared-thread-library)

