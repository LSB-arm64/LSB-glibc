CFLAGS-inl-tester.c = -fno-builtin
CFLAGS-noinl-tester.c = -fno-builtin
CFLAGS-tst-strlen.c = -fno-builtin
CFLAGS-stratcliff.c = -fno-builtin
CFLAGS-test-ffs.c = -fno-builtin
CFLAGS-tst-inlcall.c = -fno-builtin
$(objpfx)tst-svc-cmp.out: tst-svc.expect $(objpfx)tst-svc.out
$(objpfx)test-strcasecmp.out: $(gen-locales)
$(objpfx)test-strncasecmp.out: $(gen-locales)
$(objpfx)tst-strxfrm.out: $(gen-locales)
$(objpfx)tst-strxfrm2.out: $(gen-locales)
$(objpfx)bug-strcoll2.out: $(gen-locales)
strop-tests	:= memchr memcmp memcpy memmove mempcpy memset memccpy			   stpcpy stpncpy strcat strchr strcmp strcpy strcspn			   strlen strncmp strncpy strpbrk strrchr strspn memmem			   strstr strcasestr strnlen strcasecmp strncasecmp			   strncat rawmemchr strchrnul bcopy bzero memrchr
tests		:= tester inl-tester noinl-tester testcopy test-ffs			   tst-strlen stratcliff tst-svc tst-inlcall				   bug-strncat1 bug-strspn1 bug-strpbrk1 tst-bswap			   tst-strtok tst-strxfrm bug-strcoll1 tst-strfry			   bug-strtok1 $(addprefix test-,$(strop-tests))			   bug-envz1 tst-strxfrm2 tst-endian tst-svc2				   tst-strtok_r bug-strcoll2
xtests = tst-strcoll-overflow
tests-special += $(objpfx)tst-svc-cmp.out
