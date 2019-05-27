$(objpfx)tst-btowc.out: $(gen-locales)
$(objpfx)tst-c16c32-1.out: $(gen-locales)
$(objpfx)tst-mbrtowc.out: $(gen-locales)
$(objpfx)tst-mbrtowc2.out: $(gen-locales)
$(objpfx)tst-wcrtomb.out: $(gen-locales)
$(objpfx)wcsmbs-tst1.out: $(gen-locales)
$(objpfx)tst-wcstol-locale.out: $(gen-locales)
$(objpfx)tst-wcstod-nan-locale.out: $(gen-locales)
CFLAGS-wcwidth.c = -I../wctype
CFLAGS-wcswidth.c = -I../wctype
CFLAGS-wcstol.c = $(strtox-CFLAGS)
CFLAGS-wcstoul.c = $(strtox-CFLAGS)
CFLAGS-wcstoll.c = $(strtox-CFLAGS)
CFLAGS-wcstoull.c = $(strtox-CFLAGS)
CFLAGS-wcstod.c = $(strtox-CFLAGS)
CFLAGS-wcstold.c = $(strtox-CFLAGS)
CFLAGS-wcstof.c = $(strtox-CFLAGS)
CFLAGS-wcstol_l.c = $(strtox-CFLAGS)
CFLAGS-wcstoul_l.c = $(strtox-CFLAGS)
CFLAGS-wcstoll_l.c = $(strtox-CFLAGS)
CFLAGS-wcstoull_l.c = $(strtox-CFLAGS)
CFLAGS-wcstod_l.c = $(strtox-CFLAGS)
CFLAGS-wcstold_l.c = $(strtox-CFLAGS)
CFLAGS-wcstof_l.c = $(strtox-CFLAGS)
CFLAGS-isoc99_wscanf.c += -fexceptions
CFLAGS-isoc99_fwscanf.c += -fexceptions
CFLAGS-isoc99_vwscanf.c += -fexceptions
CFLAGS-isoc99_vfwscanf.c += -fexceptions
$(objpfx)tst-wcstod-nan-locale: $(libm)
strop-tests :=  wcscmp wcsncmp wmemcmp wcslen wcschr wcsrchr wcscpy wcsnlen 		wcpcpy wcsncpy wcpncpy wcscat wcsncat wcschrnul wcsspn wcspbrk 		wcscspn wmemchr wmemset
tests := tst-wcstof wcsmbs-tst1 tst-wcsnlen tst-btowc tst-mbrtowc 	 tst-wcrtomb tst-wcpncpy tst-mbsrtowcs tst-wchar-h tst-mbrtowc2 	 tst-c16c32-1 wcsatcliff tst-wcstol-locale tst-wcstod-nan-locale 	 $(addprefix test-,$(strop-tests))
