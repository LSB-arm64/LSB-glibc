# Makefile for intl subdirectory: message handling code from GNU gettext.
plural.c: plural.y
$(objpfx)plural.o: plural.c
$(codeset_mo): tstcodeset.po
$(objpfx)mtrace-tst-gettext.out: $(objpfx)tst-gettext.out
$(objpfx)tst-gettext.out: tst-gettext.sh $(objpfx)tst-gettext
$(objpfx)tst-translit.out: tst-translit.sh $(objpfx)tst-translit
$(objpfx)tst-gettext2.out: tst-gettext2.sh $(objpfx)tst-gettext2
$(objpfx)tst-gettext4.out: tst-gettext4.sh $(objpfx)tst-gettext4
$(objpfx)tst-gettext6.out: tst-gettext6.sh $(objpfx)tst-gettext6
$(objpfx)tst-codeset.out: $(codeset_mo)
$(objpfx)tst-gettext3.out: $(codeset_mo)
$(objpfx)tst-gettext5.out: $(codeset_mo)
$(objpfx)tst-codeset.out: $(gen-locales)
$(objpfx)tst-gettext.out: $(gen-locales)
$(objpfx)tst-gettext2.out: $(gen-locales)
$(objpfx)tst-gettext3.out: $(gen-locales)
$(objpfx)tst-gettext4.out: $(gen-locales)
$(objpfx)tst-gettext5.out: $(gen-locales)
$(objpfx)tst-gettext6.out: $(gen-locales)
$(objpfx)tst-translit.out: $(gen-locales)
$(objpfx)msgs.h: po2test.awk ../po/de.po
CFLAGS-tst-gettext.c = -DTESTSTRS_H=\"$(objpfx)msgs.h\"
CFLAGS-tst-translit.c = -DOBJPFX=\"$(objpfx)\"
CFLAGS-tst-gettext2.c = -DOBJPFX=\"$(objpfx)\"
CFLAGS-tst-codeset.c = -DOBJPFX=\"$(objpfx)\"
CFLAGS-tst-gettext3.c = -DOBJPFX=\"$(objpfx)\"
CFLAGS-tst-gettext4.c = -DOBJPFX=\"$(objpfx)\"
CFLAGS-tst-gettext5.c = -DOBJPFX=\"$(objpfx)\"
CFLAGS-tst-gettext6.c = -DOBJPFX=\"$(objpfx)\"
$(addprefix $(objpfx),$(multithread-test-srcs)): $(shared-thread-library)
$(addprefix $(objpfx),$(multithread-test-srcs)): $(static-thread-library)
$(objpfx)tst-translit.out: $(objpfx)tst-gettext.out
$(objpfx)tst-gettext2.out: $(objpfx)tst-gettext.out
$(objpfx)tst-codeset.out: $(objpfx)tst-gettext.out
$(objpfx)tst-gettext3.out: $(objpfx)tst-gettext.out
$(objpfx)tst-gettext4.out: $(objpfx)tst-gettext.out
$(objpfx)tst-gettext5.out: $(objpfx)tst-gettext.out
$(objpfx)tst-gettext6.out: $(objpfx)tst-gettext.out
$(inst_msgcatdir)/locale.alias: locale.alias $(+force)
multithread-test-srcs := tst-gettext4 tst-gettext5 tst-gettext6
test-srcs := tst-gettext tst-translit tst-gettext2 tst-codeset tst-gettext3
test-srcs += $(multithread-test-srcs)
tests = tst-ngettext
tests-special += $(objpfx)tst-translit.out $(objpfx)tst-gettext.out 		 $(objpfx)tst-gettext2.out $(objpfx)tst-codeset.out 		 $(objpfx)tst-gettext3.out
tests-special += $(objpfx)tst-gettext4.out $(objpfx)tst-gettext5.out 		 $(objpfx)tst-gettext6.out
tests-special += $(objpfx)mtrace-tst-gettext.out
$(addprefix $(objpfx),$(multithread-test-srcs)): $(shared-thread-library)
$(addprefix $(objpfx),$(multithread-test-srcs)): $(static-thread-library)
