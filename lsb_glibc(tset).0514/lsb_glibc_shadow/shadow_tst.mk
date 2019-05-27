CFLAGS-getspent_r.c = -fexceptions
CFLAGS-getspent.c = -fexceptions
CFLAGS-fgetspent.c = -fexceptions
CFLAGS-fgetspent_r.c = -fexceptions $(libio-mtsafe)
CFLAGS-putspent.c = -fexceptions $(libio-mtsafe)
CFLAGS-getspnam.c = -fexceptions
CFLAGS-getspnam_r.c = -fexceptions
tests = tst-shadow tst-putspent
