$(objpfx)zic.o $(objpfx)zdump.o: $(objpfx)version.h
$(objpfx)version.h: $(common-objpfx)config.make
CFLAGS-zdump.c = $(tz-cflags)
CFLAGS-zic.c = $(tz-cflags) -Wno-unused-variable
$(objpfx)test-tz.out: $(addprefix $(testdata)/, America/New_York Etc/UTC UTC)
$(objpfx)tst-timezone.out: $(addprefix $(testdata)/, 				       Europe/Berlin Universal 				       Australia/Melbourne 				       America/Sao_Paulo Asia/Tokyo 				       Europe/London)
$(objpfx)tst-tzset.out: $(addprefix $(testdata)/XT, 1 2 3 4)
test-tz-ENV = TZDIR=$(testdata)
tst-timezone-ENV = TZDIR=$(testdata)
tst-tzset-ENV = TZDIR=$(testdata)
$(testdata)/America/New_York: northamerica $(zic-deps)
$(testdata)/$(posixrules-file): $(testdata)/America/New_York
$(testdata)/Etc/UTC: etcetera $(zic-deps)
%/UTC %/Universal: simplebackw $(zic-deps) %/Etc/UTC
$(testdata)/%/Berlin $(testdata)/%/London: europe $(zic-deps)
$(testdata)/Australia/Melbourne: australasia $(zic-deps)
$(testdata)/America/Sao_Paulo: southamerica $(zic-deps)
$(testdata)/Asia/Tokyo: asia $(zic-deps)
$(testdata)/XT%: testdata/XT%
$(objpfx)tzselect: tzselect.ksh $(common-objpfx)config.make
tests	:= test-tz tst-timezone tst-tzset
tests-special += $(addprefix $(testdata)/, $(test-zones))
