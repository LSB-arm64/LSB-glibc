# Caution: if you add a database here, you must add its real name
$(services:%=$(objpfx)libnss_%.so): libc-for-link = $(libnss-libc)
$(objpfx)libnss_db.so: $(objpfx)libnss_files.so
$(libnss_db-dbs:%=$(objpfx)%.c): $(objpfx)db-%.c: nss_files/files-%.c
$(objpfx)makedb: $(makedb-modules:%=$(objpfx)%.o)
$(inst_vardbdir)/Makefile: db-Makefile $(+force)
$(objpfx)/libnss_test1.so: $(objpfx)nss_test1.os $(link-libc-deps)
$(objpfx)/libnss_test1.so$(libnss_test1.so-version): $(objpfx)/libnss_test1.so
$(objpfx)tst-nss-test1.out: $(objpfx)/libnss_test1.so$(libnss_test1.so-version)
tests-static            = tst-field
tests			= test-netdb tst-nss-test1 test-digits-dots 			  tst-nss-getpwent bug17079 			  $(tests-static)
xtests			= bug-erange
tests-static		+= tst-nss-static
