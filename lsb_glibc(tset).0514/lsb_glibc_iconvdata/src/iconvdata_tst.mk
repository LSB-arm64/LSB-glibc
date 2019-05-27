LDFLAGS-EUC-KR.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)EUC-KR.so: $(objpfx)libKSC.so
LDFLAGS-JOHAB.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)JOHAB.so: $(objpfx)libKSC.so
LDFLAGS-UHC.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)UHC.so: $(objpfx)libKSC.so
LDFLAGS-EUC-JP.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)EUC-JP.so: $(objpfx)libJIS.so
LDFLAGS-EUC-JP-MS.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)EUC-JP-MS.so: $(objpfx)libJIS.so
LDFLAGS-EUC-CN.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)EUC-CN.so: $(objpfx)libGB.so
LDFLAGS-EUC-TW.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)EUC-TW.so: $(objpfx)libCNS.so
LDFLAGS-EUC-JISX0213.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)EUC-JISX0213.so: $(objpfx)libJISX0213.so
LDFLAGS-SHIFT_JISX0213.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)SHIFT_JISX0213.so: $(objpfx)libJISX0213.so
LDFLAGS-ISO-2022-JP.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)ISO-2022-JP.so: $(objpfx)libJIS.so $(objpfx)libGB.so 			 $(objpfx)libCNS.so $(objpfx)libKSC.so
LDFLAGS-ISO-2022-JP-3.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)ISO-2022-JP-3.so: $(objpfx)libJIS.so $(objpfx)libJISX0213.so
LDFLAGS-ISO-2022-KR.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)ISO-2022-KR.so: $(objpfx)libKSC.so
LDFLAGS-ISO-2022-CN.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)ISO-2022-CN.so: $(objpfx)libGB.so $(objpfx)libCNS.so
LDFLAGS-ISO-2022-CN-EXT.so = $(LDFLAGS-rpath-ORIGIN)
$(objpfx)ISO-2022-CN-EXT.so: $(objpfx)libGB.so $(objpfx)libCNS.so 			     $(objpfx)libISOIR165.so
LDFLAGS-libJIS.so = $(LDFLAGS-soname-fname)
LDFLAGS-libKSC.so = $(LDFLAGS-soname-fname)
LDFLAGS-libGB.so = $(LDFLAGS-soname-fname)
LDFLAGS-libCNS.so = $(LDFLAGS-soname-fname)
LDFLAGS-libISOIR165.so = $(LDFLAGS-soname-fname)
LDFLAGS-libJISX0213.so = $(LDFLAGS-soname-fname)
$(objpfx)iconv-rules: Makefile
	{ echo $(filter-out lib%, $(modules)); 	  echo 8bit $(gen-8bit-modules); 	  echo 8bit-gap $(gen-8bit-gap-modules); } | 	LC_ALL=C 	$(AWK) 'NR == 1 { 		  for (i = 1; i <= NF; i++) { 		    printf "%s-routines := %s\n", $$i, tolower($$i); 		    printf "libof-%s := iconvdata\n", tolower($$i); 		    printf "%s-map := gconv.map\n", $$i; 		  } 		}; 		NR > 1 { 		  for (i = 2; i <= NF; i++) { 		    printf "$$(objpfx)%s.stmp: ", $$i; 		    map = toupper($$i); 		    sub(/^ISO8859/, "ISO-8859", map); 		    if (map == "ISO_2033") map = map "-1983"; 		    printf "$$(charmaps)/%s ", map; 		    printf "gen-%s.sh\n", $$1; 		    printf "\t$$(generate-%s-table)\n", $$1; 		  } 		}' > $@.new
$(generated-modules:%=$(objpfx)%.h): $(objpfx)%.h: $(objpfx)%.stmp
$(gen-8bit-modules:%=$(objpfx)%.stmp): $(objpfx)%.stmp: $(objpfx)iconv-rules
$(gen-8bit-gap-modules:%=$(objpfx)%.stmp): $(objpfx)%.stmp: $(objpfx)iconv-rules
$(objpfx)iso8859-7jp.stmp: $(charmaps)/ISO-8859-7 gen-8bit-gap-1.sh
headers: $(addprefix $(objpfx), $(generated-modules:=.h))
$(addprefix $(inst_gconvdir)/, $(modules.so)):     $(inst_gconvdir)/%: $(objpfx)% $(+force)
$(inst_gconvdir)/gconv-modules: gconv-modules $(+force)
$(objpfx)bug-iconv6.out: $(gen-locales)
$(objpfx)tst-iconv7.out: $(gen-locales)
tst-loading-ENV = MALLOC_TRACE=$(objpfx)tst-loading.mtrace
$(objpfx)mtrace-tst-loading.out: $(objpfx)tst-loading.out
$(objpfx)bug-iconv1.out: $(objpfx)gconv-modules 			 $(addprefix $(objpfx),$(modules.so))
$(objpfx)bug-iconv2.out: $(objpfx)gconv-modules 			 $(addprefix $(objpfx),$(modules.so))
$(objpfx)bug-iconv3: $(libdl)
$(objpfx)bug-iconv3.out: $(objpfx)gconv-modules 			 $(addprefix $(objpfx),$(modules.so))
$(objpfx)bug-iconv5.out: $(objpfx)gconv-modules 			 $(addprefix $(objpfx),$(modules.so))
$(objpfx)tst-loading.out: $(objpfx)gconv-modules 			  $(addprefix $(objpfx),$(modules.so))
$(objpfx)tst-iconv4.out: $(objpfx)gconv-modules 			 $(addprefix $(objpfx),$(modules.so))
$(objpfx)tst-iconv7.out: $(objpfx)gconv-modules 			 $(addprefix $(objpfx),$(modules.so))
$(objpfx)bug-iconv10.out: $(objpfx)gconv-modules 			  $(addprefix $(objpfx),$(modules.so))
$(objpfx)iconv-test.out: run-iconv-test.sh $(objpfx)gconv-modules 			 $(addprefix $(objpfx),$(modules.so)) 			 $(common-objdir)/iconv/iconv_prog TESTS
$(objpfx)tst-tables.out: tst-tables.sh $(objpfx)gconv-modules 			 $(addprefix $(objpfx),$(modules.so)) 			 $(objpfx)tst-table-from $(objpfx)tst-table-to
do-tests-clean common-mostlyclean: tst-tables-clean
.PHONY: tst-tables-clean
$(objpfx)gconv-modules: gconv-modules
modules	:= ISO8859-1 ISO8859-2 ISO8859-3 ISO8859-4 ISO8859-5		 	   ISO8859-6 ISO8859-7 ISO8859-8 ISO8859-9 ISO8859-10		 	   ISO8859-11 ISO8859-13 ISO8859-14 ISO8859-15 ISO8859-16	 	   T.61 ISO_6937 SJIS KOI-8 HP-ROMAN8 HP-ROMAN9 EBCDIC-AT-DE	 	   EBCDIC-AT-DE-A EBCDIC-CA-FR EUC-KR UHC JOHAB libJIS libKSC	 	   BIG5 EUC-JP libGB EUC-CN libCNS EUC-TW ISO646 EBCDIC-DK-NO	 	   EBCDIC-DK-NO-A EBCDIC-ES EBCDIC-ES-A EBCDIC-ES-S EBCDIC-FI-SE 	   EBCDIC-FI-SE-A EBCDIC-FR EBCDIC-IS-FRISS EBCDIC-IT EBCDIC-PT	 	   EBCDIC-UK EBCDIC-US IBM037 IBM038 IBM274 IBM275 IBM423	 	   IBM500 IBM870 IBM871 IBM891 IBM903 IBM904 IBM905 IBM1047	 	   IBM874 CP737 CP775 ISO-2022-KR HP-TURKISH8 HP-THAI8 HP-GREEK8 	   KOI8-R LATIN-GREEK LATIN-GREEK-1 IBM256 IBM273 IBM277 IBM278	 	   IBM280 IBM281 IBM284 IBM285 IBM290 IBM297 IBM420 IBM424	 	   IBM437 IBM850 IBM851 IBM852 IBM855 IBM857 IBM860 IBM861	 	   IBM862 IBM863 IBM864 IBM865 IBM868 IBM869 IBM875 IBM880	 	   IBM866 CP1258 IBM922 IBM1124 IBM1129 IBM932 IBM943		 	   IBM856 IBM930 IBM933 IBM935 IBM937 IBM939 IBM1046		 	   IBM1132 IBM1133 IBM1160 IBM1161 IBM1162 IBM1163 IBM1164	 	   IBM918 IBM1004 IBM1026 CP1125 CP1250 CP1251 CP1252 CP1253	 	   CP1254 CP1255 CP1256 CP1257 ISO-2022-JP MACINTOSH IEC_P27-1	 	   ASMO_449 ANSI_X3.110 CSN_369103 CWI DEC-MCS ECMA-CYRILLIC	 	   GOST_19768-74 GREEK-CCITT GREEK7 GREEK7-OLD INIS INIS-8	 	   INIS-CYRILLIC ISO_6937-2 ISO_2033 ISO_5427 ISO_5427-EXT	 	   ISO_5428 ISO_10367-BOX MAC-IS MAC-UK NATS-DANO NATS-SEFI	 	   SAMI-WS2 ISO-IR-197 TIS-620 KOI8-U GBK ISIRI-3342 GBGBK	 	   ISO-2022-CN libISOIR165 UTF-16 UNICODE UTF-32 UTF-7 BIG5HKSCS 	   GB18030 ISO-2022-CN-EXT VISCII GBBIG5 CP10007 KOI8-T		 	   GEORGIAN-PS GEORGIAN-ACADEMY ISO-IR-209 MAC-SAMI ARMSCII-8	 	   TCVN5712-1 libJISX0213 EUC-JISX0213 SHIFT_JISX0213		 	   ISO-2022-JP-3 TSCII IBM866NAV CP932 EUC-JP-MS PT154 RK1048	 	   IBM1025 IBM1122 IBM1137 IBM1153 IBM1154 IBM1155 IBM1156	 	   IBM1157 IBM1158 IBM803 IBM901 IBM902 IBM921 IBM1008		 	   IBM1008_420 IBM1097 IBM1112 IBM1123 IBM1130 IBM1140 IBM1141	 	   IBM1142 IBM1143 IBM1144 IBM1145 IBM1146 IBM1147 IBM1148	 	   IBM1149 IBM1166 IBM1167 IBM4517 IBM4899 IBM4909 IBM4971	 	   IBM5347 IBM9030 IBM9066 IBM9448 IBM12712 IBM16804             	   IBM1364 IBM1371 IBM1388 IBM1390 IBM1399 ISO_11548-1 MIK BRF	 	   MAC-CENTRALEUROPE KOI8-RU ISO8859-9E				 	   CP770 CP771 CP772 CP773 CP774
modules.so := $(addsuffix .so, $(modules))
tests = bug-iconv1 bug-iconv2 tst-loading tst-e2big tst-iconv4 bug-iconv4 	tst-iconv6 bug-iconv5 bug-iconv6 tst-iconv7 bug-iconv8 bug-iconv9 	bug-iconv10 bug-iconv11
tests += bug-iconv3
test-srcs := tst-table-from tst-table-to
tests-special += $(objpfx)iconv-test.out $(objpfx)tst-tables.out
tests-special += $(objpfx)mtrace-tst-loading.out
