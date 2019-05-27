LDFLAGS-tst-profile-static = -profile
CFLAGS-mcount.c := -fno-omit-frame-pointer
$(noprof:%=$(objpfx)%.op): %.op: %.o
tests	= tst-sprofil
tests	+= tst-profile-static
tests-static	+= tst-profile-static
