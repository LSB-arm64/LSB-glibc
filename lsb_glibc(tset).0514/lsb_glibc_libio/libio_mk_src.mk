# Copyright (C) 1995-2016 Free Software Foundation, Inc.
# This file is part of the GNU C Library.

# The GNU C Library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.

# The GNU C Library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.

# You should have received a copy of the GNU Lesser General Public
# License along with the GNU C Library; if not, see
# <http://www.gnu.org/licenses/>.

#
#	Specific makefile for libio.
#
subdir	:= libio

include ../Makeconfig

headers	:= stdio.h libio.h _G_config.h bits/stdio.h \
	   bits/sys_errlist.h bits/stdio2.h bits/stdio-ldbl.h bits/libio-ldbl.h

routines	:=							      \
	filedoalloc iofclose iofdopen iofflush iofgetpos iofgets iofopen      \
	iofopncook iofputs iofread iofsetpos ioftell wfiledoalloc	      \
	iofwrite iogetdelim iogetline iogets iopadn iopopen ioputs	      \
	ioseekoff ioseekpos iosetbuffer iosetvbuf ioungetc		      \
	iovsprintf iovsscanf						      \
	iofgetpos64 iofopen64 iofsetpos64				      \
	fputwc fputwc_u getwc getwc_u getwchar getwchar_u iofgetws iofgetws_u \
	iofputws iofputws_u iogetwline iowpadn ioungetwc putwc putwc_u	      \
	putwchar putwchar_u putchar putchar_u fwprintf swprintf vwprintf      \
	wprintf wscanf fwscanf vwscanf vswprintf iovswscanf swscanf wgenops   \
	wstrops wfileops iofwide fwide wmemstream			      \
									      \
	clearerr feof ferror fileno fputc freopen fseek getc getchar	      \
	memstream pclose putc putchar rewind setbuf setlinebuf vasprintf      \
	iovdprintf vscanf vsnprintf obprintf fcloseall fseeko ftello	      \
	freopen64 fseeko64 ftello64					      \
									      \
	__fbufsize __freading __fwriting __freadable __fwritable __flbf	      \
	__fpurge __fpending __fsetlocking				      \
									      \
	libc_fatal fmemopen oldfmemopen

tests = tst_swprintf tst_wprintf tst_swscanf tst_wscanf tst_getwc tst_putwc   \
	tst_wprintf2 tst-widetext test-fmemopen tst-ext tst-ext2 \
	tst-fgetws tst-ungetwc1 tst-ungetwc2 tst-swscanf tst-sscanf	      \
	tst-mmap-setvbuf bug-ungetwc1 bug-ungetwc2 tst-atime tst-eof          \
	tst-freopen bug-rewind bug-rewind2 bug-ungetc bug-fseek \
	tst-mmap-eofsync tst-mmap-fflushsync bug-mmap-fflush \
	tst-mmap2-eofsync tst-mmap-offend bug-fopena+ bug-wfflush \
	bug-ungetc2 bug-ftell bug-ungetc3 bug-ungetc4 tst-fopenloc2 \
	tst-memstream1 tst-memstream2 \
	tst-wmemstream1 tst-wmemstream2 \
	bug-memstream1 bug-wmemstream1 \
	tst-setvbuf1 tst-popen1 tst-fgetwc bug-wsetpos tst-fseek \
	tst-fwrite-error tst-ftell-partial-wide tst-ftell-active-handler \
	tst-ftell-append tst-fputws
ifeq (yes,$(build-shared))
# Add test-fopenloc only if shared library is enabled since it depends on
# shared localedata objects.
tests += tst-fopenloc
endif
test-srcs = test-freopen

ifeq ($(build-shared),yes)
routines += oldiofopen oldiofdopen oldiofclose oldiopopen oldpclose \
	    oldtmpfile oldiofgetpos oldiofgetpos64 oldiofsetpos	    \
	    oldiofsetpos64
endif

ifeq (yes,$(libc-reentrant))
routines += clearerr_u feof_u ferror_u fputc_u getc_u getchar_u		      \
	    iofflush_u putc_u putchar_u peekc iofread_u iofwrite_u iofgets_u  \
	    iofputs_u
endif

CPPFLAGS += $(libio-mtsafe)

# Support for exception handling.
CFLAGS-fileops.c = -fexceptions
CFLAGS-fputc.c = -fexceptions
CFLAGS-fputwc.c = -fexceptions
CFLAGS-freopen64.c = -fexceptions
CFLAGS-freopen.c = -fexceptions
CFLAGS-fseek.c = -fexceptions
CFLAGS-fseeko64.c = -fexceptions
CFLAGS-fseeko.c = -fexceptions
CFLAGS-ftello64.c = -fexceptions
CFLAGS-ftello.c = -fexceptions
CFLAGS-fwide.c = -fexceptions
CFLAGS-genops.c = -fexceptions
CFLAGS-getc.c = -fexceptions
CFLAGS-getchar.c = -fexceptions
CFLAGS-getwc.c = -fexceptions
CFLAGS-getwchar.c = -fexceptions
CFLAGS-iofclose.c = -fexceptions
CFLAGS-iofflush.c = -fexceptions
CFLAGS-iofgetpos64.c = -fexceptions
CFLAGS-iofgetpos.c = -fexceptions
CFLAGS-iofgets.c = -fexceptions
CFLAGS-iofgetws.c = -fexceptions
CFLAGS-iofputs.c = -fexceptions
CFLAGS-iofputws.c = -fexceptions
CFLAGS-iofread.c = -fexceptions
CFLAGS-iofsetpos64.c = -fexceptions
CFLAGS-iofsetpos.c = -fexceptions
CFLAGS-ioftell.c = -fexceptions
CFLAGS-iofwrite.c = -fexceptions
CFLAGS-iogetdelim.c = -fexceptions
CFLAGS-iogetline.c = -fexceptions
CFLAGS-iogets.c = -fexceptions
CFLAGS-iogetwline.c = -fexceptions
CFLAGS-ioputs.c = -fexceptions
CFLAGS-ioseekoff.c = -fexceptions
CFLAGS-ioseekpos.c = -fexceptions
CFLAGS-iosetbuffer.c = -fexceptions
CFLAGS-iosetvbuf.c = -fexceptions
CFLAGS-ioungetc.c = -fexceptions
CFLAGS-ioungetwc.c = -fexceptions
CFLAGS-oldfileops.c = -fexceptions
CFLAGS-oldiofclose.c = -fexceptions
CFLAGS-oldiofgetpos64.c = -fexceptions
CFLAGS-oldiofgetpos.c = -fexceptions
CFLAGS-oldiofsetpos64.c = -fexceptions
CFLAGS-oldiofsetpos.c = -fexceptions
CFLAGS-peekc.c = -fexceptions
CFLAGS-putc.c = -fexceptions
CFLAGS-putchar.c = -fexceptions
CFLAGS-putwc.c = -fexceptions
CFLAGS-putwchar.c = -fexceptions
CFLAGS-rewind.c = -fexceptions
CFLAGS-wfileops.c = -fexceptions
CFLAGS-wgenops.c = -fexceptions
CFLAGS-oldiofopen.c = -fexceptions
CFLAGS-iofopen.c = -fexceptions
CFLAGS-iofopen64.c = -fexceptions
CFLAGS-oldtmpfile.c = -fexceptions
# XXX Do we need filedoalloc and wfiledoalloc?  Others?

CFLAGS-tst_putwc.c = -DOBJPFX=\"$(objpfx)\"

tst_wprintf2-ARGS = "Some Text"

test-fmemopen-ENV = MALLOC_TRACE=$(objpfx)test-fmemopen.mtrace
tst-fopenloc-ENV = MALLOC_TRACE=$(objpfx)tst-fopenloc.mtrace

generated += test-fmemopen.mtrace test-fmemopen.check
generated += tst-fopenloc.mtrace tst-fopenloc.check

aux	:= fileops genops stdfiles stdio strops

ifeq ($(build-shared),yes)
aux	+= oldfileops oldstdfiles
endif

shared-only-routines = oldiofopen oldiofdopen oldiofclose oldfileops	\
		       oldstdfiles oldiopopen oldpclose oldtmpfile	\
		       oldiofgetpos oldiofgetpos64 oldiofsetpos		\
		       oldiofsetpos64

ifeq ($(run-built-tests),yes)
tests-special += $(objpfx)test-freopen.out $(objpfx)test-fmemopen-mem.out
ifeq (yes,$(build-shared))
# Run tst-fopenloc-cmp.out and tst-openloc-mem.out only if shared
# library is enabled since they depend on tst-fopenloc.out.
tests-special += $(objpfx)tst-fopenloc-cmp.out $(objpfx)tst-fopenloc-mem.out
endif
endif

include ../Rules

ifeq ($(run-built-tests),yes)
LOCALES := de_DE.ISO-8859-1 de_DE.UTF-8 en_US.ISO-8859-1 en_US.UTF-8 \
	   ja_JP.EUC-JP ja_JP.UTF-8
include ../gen-locales.mk

$(objpfx)bug-ftell.out: $(gen-locales)
$(objpfx)bug-ungetwc1.out: $(gen-locales)
$(objpfx)bug-ungetwc2.out: $(gen-locales)
$(objpfx)tst-fgetwc.out: $(gen-locales)
$(objpfx)tst-fgetws.out: $(gen-locales)
$(objpfx)tst-fopenloc.out: $(gen-locales)
$(objpfx)tst-fputws.out: $(gen-locales)
$(objpfx)tst-fseek.out: $(gen-locales)
$(objpfx)tst-ftell-active-handler.out: $(gen-locales)
$(objpfx)tst-ftell-append.out: $(gen-locales)
$(objpfx)tst-ftell-partial-wide.out: $(gen-locales)
$(objpfx)tst-setvbuf1.out: $(gen-locales)
$(objpfx)tst-swscanf.out: $(gen-locales)
$(objpfx)tst-ungetwc1.out: $(gen-locales)
$(objpfx)tst-ungetwc2.out: $(gen-locales)
$(objpfx)tst-widetext.out: $(gen-locales)
$(objpfx)tst_wprintf2.out: $(gen-locales)
endif

$(objpfx)test-freopen.out: test-freopen.sh $(objpfx)test-freopen
	$(SHELL) $< $(common-objpfx) '$(test-program-prefix)'	\
	$(common-objpfx)libio/; \
	$(evaluate-test)

$(objpfx)tst-fopenloc-cmp.out: ../iconvdata/testdata/ISO-8859-1..UTF8 \
			       $(objpfx)tst-fopenloc.out
	cmp $^ > $@; \
	$(evaluate-test)

$(objpfx)test-fmemopen-mem.out: $(objpfx)test-fmemopen.out
	$(common-objpfx)malloc/mtrace $(objpfx)test-fmemopen.mtrace > $@; \
	$(evaluate-test)

$(objpfx)tst-fopenloc-mem.out: $(objpfx)tst-fopenloc.out
	$(common-objpfx)malloc/mtrace $(objpfx)tst-fopenloc.mtrace > $@; \
	$(evaluate-test)
