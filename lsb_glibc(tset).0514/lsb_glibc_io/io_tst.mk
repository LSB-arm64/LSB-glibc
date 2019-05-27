CFLAGS-open.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-open64.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-fcntl.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-poll.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-ppoll.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-lockf.c = -fexceptions
CFLAGS-statfs.c = -fexceptions
CFLAGS-fstatfs.c = -fexceptions
CFLAGS-statvfs.c = -fexceptions
CFLAGS-fstatvfs.c = -fexceptions
CFLAGS-fts.c = -Wno-uninitialized $(uses-callbacks) -fexceptions
CFLAGS-fts64.c = -Wno-uninitialized $(uses-callbacks) -fexceptions
CFLAGS-ftw.c = $(uses-callbacks) -fexceptions
CFLAGS-ftw64.c = $(uses-callbacks) -fexceptions
CFLAGS-lockf.c = -fexceptions
CFLAGS-posix_fallocate.c = -fexceptions
CFLAGS-posix_fallocate64.c = -fexceptions
CFLAGS-fallocate.c = -fexceptions
CFLAGS-fallocate64.c = -fexceptions
CFLAGS-sync_file_range.c = -fexceptions
CFLAGS-test-stat.c = -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE
CFLAGS-test-lfs.c = -D_LARGEFILE64_SOURCE
test-stat2-ARGS = Makefile . $(objpfx)test-stat2
tst-statvfs-ARGS = $(objpfx)tst-statvfs tst-statvfs.c /tmp
$(objpfx)ftwtest.out: ftwtest-sh $(objpfx)ftwtest
test-srcs	:= ftwtest
tests		:= test-utime test-stat test-stat2 test-lfs tst-getcwd 		   tst-fcntl bug-ftw1 bug-ftw2 bug-ftw3 bug-ftw4 tst-statvfs 		   tst-openat tst-unlinkat tst-fstatat tst-futimesat 		   tst-renameat tst-fchownat tst-fchmodat tst-faccessat 		   tst-symlinkat tst-linkat tst-readlinkat tst-mkdirat 		   tst-mknodat tst-mkfifoat tst-ttyname_r bug-ftw5 		   tst-posix_fallocate tst-fts tst-fts-lfs
tests-special += $(objpfx)ftwtest.out
