CFLAGS-getpwent_r.c = -fexceptions
CFLAGS-getpwent.c = -fexceptions
CFLAGS-getpw.c = -fexceptions
CFLAGS-fgetpwent_r.c = $(libio-mtsafe)
tests := tst-getpw tst-putpwent
