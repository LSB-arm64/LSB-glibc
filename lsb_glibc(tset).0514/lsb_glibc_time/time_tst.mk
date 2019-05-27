$(objpfx)tst-ftime_l.out: $(gen-locales)
$(objpfx)tst-strptime.out: $(gen-locales)
CFLAGS-tzfile.c = $(tz-cflags)
CFLAGS-tzset.c = $(tz-cflags)
CFLAGS-getdate.c = -fexceptions
CFLAGS-test_time.c = -Wno-format
tst-getdate-ENV= DATEMSK=datemsk TZDIR=${common-objpfx}timezone/testdata
test_time-ARGS= EST5EDT CST
tst-tzname-ENV = TZDIR=${common-objpfx}timezone/testdata
bug-getdate1-ARGS = ${objpfx}bug-getdate1-fmt
tests	:= test_time clocktest tst-posixtz tst-strptime tst_wcsftime 	   tst-getdate tst-mktime tst-mktime2 tst-ftime_l tst-strftime 	   tst-mktime3 tst-strptime2 bug-asctime bug-asctime_r bug-mktime1 	   tst-strptime3 bug-getdate1 tst-strptime-whitespace tst-ftime 	   tst-tzname
