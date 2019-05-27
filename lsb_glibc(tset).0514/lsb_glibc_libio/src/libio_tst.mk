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
CFLAGS-tst_putwc.c = -DOBJPFX=\"$(objpfx)\"
tst_wprintf2-ARGS = "Some Text"
test-fmemopen-ENV = MALLOC_TRACE=$(objpfx)test-fmemopen.mtrace
tst-fopenloc-ENV = MALLOC_TRACE=$(objpfx)tst-fopenloc.mtrace
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
$(objpfx)test-freopen.out: test-freopen.sh $(objpfx)test-freopen
$(objpfx)tst-fopenloc-cmp.out: ../iconvdata/testdata/ISO-8859-1..UTF8 			       $(objpfx)tst-fopenloc.out
$(objpfx)test-fmemopen-mem.out: $(objpfx)test-fmemopen.out
$(objpfx)tst-fopenloc-mem.out: $(objpfx)tst-fopenloc.out
tests = tst_swprintf tst_wprintf tst_swscanf tst_wscanf tst_getwc tst_putwc   	tst_wprintf2 tst-widetext test-fmemopen tst-ext tst-ext2 	tst-fgetws tst-ungetwc1 tst-ungetwc2 tst-swscanf tst-sscanf	      	tst-mmap-setvbuf bug-ungetwc1 bug-ungetwc2 tst-atime tst-eof          	tst-freopen bug-rewind bug-rewind2 bug-ungetc bug-fseek 	tst-mmap-eofsync tst-mmap-fflushsync bug-mmap-fflush 	tst-mmap2-eofsync tst-mmap-offend bug-fopena+ bug-wfflush 	bug-ungetc2 bug-ftell bug-ungetc3 bug-ungetc4 tst-fopenloc2 	tst-memstream1 tst-memstream2 	tst-wmemstream1 tst-wmemstream2 	bug-memstream1 bug-wmemstream1 	tst-setvbuf1 tst-popen1 tst-fgetwc bug-wsetpos tst-fseek 	tst-fwrite-error tst-ftell-partial-wide tst-ftell-active-handler 	tst-ftell-append tst-fputws
tests += tst-fopenloc
test-srcs = test-freopen
tests-special += $(objpfx)test-freopen.out $(objpfx)test-fmemopen-mem.out
tests-special += $(objpfx)tst-fopenloc-cmp.out $(objpfx)tst-fopenloc-mem.out
