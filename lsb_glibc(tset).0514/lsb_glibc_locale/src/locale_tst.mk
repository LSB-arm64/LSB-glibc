CFLAGS-md5.c = -I../crypt
$(objpfx)localedef: $(localedef-modules:%=$(objpfx)%.o)
$(objpfx)localedef: $(localedef-aux:%=$(objpfx)%.o)
$(objpfx)locale: $(locale-modules:%=$(objpfx)%.o)
CFLAGS-charmap.c = -Wno-write-strings -Wno-char-subscripts
CFLAGS-locfile.c = -Wno-write-strings -Wno-char-subscripts
CFLAGS-charmap-dir.c = -Wno-write-strings
tests		= tst-C-locale tst-locname tst-duplocale
