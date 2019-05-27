tests: $(objdir)/iconvdata/gconv-modules
$(inst_i18ndir)/charmaps/%.gz: charmaps/% $(+force)
$(inst_i18ndir)/locales/%: locales/% $(+force); $(do-install)
$(addsuffix .out,$(addprefix $(objpfx),$(tests))): %:   $(addprefix $(objpfx),$(CTYPE_FILES))
$(objpfx)sort-test.out: sort-test.sh $(objpfx)collate-test $(objpfx)xfrm-test 		       $(test-input-data) $(addprefix $(objpfx),$(CTYPE_FILES))
$(objpfx)tst-fmon.out: tst-fmon.sh $(objpfx)tst-fmon tst-fmon.data 		       $(objpfx)sort-test.out 		       $(addprefix $(objpfx),$(CTYPE_FILES))
$(objpfx)tst-numeric.out: tst-numeric.sh $(objpfx)tst-numeric tst-numeric.data 		       $(objpfx)sort-test.out 		       $(addprefix $(objpfx),$(CTYPE_FILES))
$(objpfx)tst-locale.out: tst-locale.sh $(common-objpfx)locale/localedef 			 $(ld-test-srcs) $(addprefix $(objpfx),$(CTYPE_FILES))
$(objpfx)tst-rpmatch.out: tst-rpmatch.sh $(objpfx)tst-rpmatch 			  $(objpfx)tst-fmon.out 			  $(addprefix $(objpfx),$(CTYPE_FILES))
$(objpfx)tst-trans.out: tst-trans.sh $(objpfx)tst-trans 			$(addprefix $(objpfx),$(CTYPE_FILES))
$(objpfx)tst-ctype.out: tst-ctype.sh $(objpfx)tst-ctype 			$(objpfx)sort-test.out 			$(addprefix $(objpfx),$(CTYPE_FILES))
$(objpfx)tst-langinfo.out: tst-langinfo.sh $(objpfx)tst-langinfo 			$(objpfx)sort-test.out 			$(addprefix $(objpfx),$(CTYPE_FILES))
$(objpfx)tst-langinfo-static.out: tst-langinfo.sh $(objpfx)tst-langinfo-static 			$(objpfx)sort-test.out 			$(addprefix $(objpfx),$(CTYPE_FILES))
$(objpfx)tst-digits.out: $(objpfx)tst-locale.out
$(objpfx)tst-mbswcs6.out: $(addprefix $(objpfx),$(CTYPE_FILES))
install-locales: $(INSTALL-SUPPORTED-LOCALES)
$(INSTALL-SUPPORTED-LOCALES): install-locales-dir
tst-setlocale-ENV = LC_ALL=ja_JP.EUC-JP
tst-wctype-ENV = LC_ALL=ja_JP.EUC-JP
tst-leaks-ENV = MALLOC_TRACE=$(objpfx)tst-leaks.mtrace
$(objpfx)mtrace-tst-leaks.out: $(objpfx)tst-leaks.out
bug-setlocale1-ENV-only = LOCPATH=$(objpfx) LC_CTYPE=de_DE.UTF-8
bug-setlocale1-static-ENV-only = $(bug-setlocale1-ENV-only)
test-srcs := collate-test xfrm-test tst-fmon tst-rpmatch tst-trans 	     tst-ctype tst-langinfo tst-langinfo-static tst-numeric
ld-test-srcs := $(addprefix tests/,$(addsuffix .cm,$(ld-test-names)) 				   $(addsuffix .def,$(ld-test-names)) 				   $(addsuffix .ds,test5 test6) 				   test6.c trans.def)
locale_test_suite := tst_iswalnum tst_iswalpha tst_iswcntrl            		     tst_iswctype tst_iswdigit tst_iswgraph            		     tst_iswlower tst_iswprint tst_iswpunct            		     tst_iswspace tst_iswupper tst_iswxdigit tst_mblen 		     tst_mbrlen tst_mbrtowc tst_mbsrtowcs tst_mbstowcs 		     tst_mbtowc tst_strcoll tst_strfmon tst_strxfrm    		     tst_swscanf tst_towctrans tst_towlower            		     tst_towupper tst_wcrtomb tst_wcscat tst_wcschr    		     tst_wcscmp tst_wcscoll tst_wcscpy tst_wcscspn     		     tst_wcslen tst_wcsncat tst_wcsncmp tst_wcsncpy    		     tst_wcspbrk tst_wcsrtombs tst_wcsspn tst_wcsstr   		     tst_wcstod tst_wcstok tst_wcstombs tst_wcswidth   		     tst_wcsxfrm tst_wctob tst_wctomb tst_wctrans      		     tst_wctype tst_wcwidth
tests = $(locale_test_suite) tst-digits tst-setlocale bug-iconv-trans 	tst-leaks tst-mbswcs1 tst-mbswcs2 tst-mbswcs3 tst-mbswcs4 tst-mbswcs5 	tst-mbswcs6 tst-xlocale1 tst-xlocale2 bug-usesetlocale 	tst-strfmon1 tst-sscanf bug-setlocale1 tst-setlocale2 tst-setlocale3 	tst-wctype
tests-static = bug-setlocale1-static
tests += $(tests-static)
tests-special += $(objpfx)mtrace-tst-leaks.out
tests: $(objdir)/iconvdata/gconv-modules
tests-static += tst-langinfo-static
tests-special += $(objpfx)sort-test.out $(objpfx)tst-fmon.out 		 $(objpfx)tst-locale.out $(objpfx)tst-rpmatch.out 		 $(objpfx)tst-trans.out $(objpfx)tst-ctype.out 		 $(objpfx)tst-langinfo.out $(objpfx)tst-langinfo-static.out 		 $(objpfx)tst-numeric.out
$(objpfx)tst-locale.out: tst-locale.sh $(common-objpfx)locale/localedef 			 $(ld-test-srcs) $(addprefix $(objpfx),$(CTYPE_FILES))
