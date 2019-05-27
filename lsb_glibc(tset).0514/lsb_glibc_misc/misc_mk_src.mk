# Copyright (C) 1991-2016 Free Software Foundation, Inc.
# This file is part of the GNU C Library.

# The GNU C Library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.

# The GNU C Library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.

# You should have received a copy of the GNU Lesser General Public
# License along with the GNU C Library; if not, see
# <http://www.gnu.org/licenses/>.

#
#	Sub-makefile for misc portion of the library.
#

subdir	:= misc

include ../Makeconfig

headers	:= sys/uio.h bits/uio.h sys/ioctl.h bits/ioctls.h bits/ioctl-types.h \
	   sys/ptrace.h sys/file.h sys/dir.h sys/cdefs.h \
	   ar.h a.out.h libgen.h stab.h bits/stab.def sgtty.h \
	   ttyent.h paths.h sys/reboot.h \
	   sys/mman.h sys/param.h bits/param.h \
	   fstab.h mntent.h search.h err.h error.h \
	   sys/queue.h sysexits.h syscall.h sys/syscall.h sys/swap.h \
	   sys/select.h ustat.h sys/ustat.h bits/ustat.h sys/sysinfo.h \
	   regexp.h bits/select.h bits/mman.h sys/xattr.h \
	   syslog.h sys/syslog.h \
	   bits/syslog.h bits/syslog-ldbl.h bits/syslog-path.h bits/error.h \
	   bits/select2.h bits/hwcap.h sys/auxv.h

routines := brk sbrk sstk ioctl \
	    readv writev preadv preadv64 pwritev pwritev64 \
	    setreuid setregid \
	    seteuid setegid \
	    getpagesize \
	    getdtsz \
	    gethostname sethostname getdomain setdomain \
	    select pselect \
	    acct chroot fsync sync fdatasync syncfs reboot \
	    gethostid sethostid \
	    revoke vhangup \
	    swapon swapoff mktemp mkstemp mkstemp64 mkdtemp \
	    mkostemp mkostemp64 mkstemps mkstemps64 mkostemps mkostemps64 \
	    ualarm usleep \
	    gtty stty \
	    ptrace \
	    fstab mntent mntent_r \
	    utimes lutimes futimes futimesat \
	    truncate ftruncate truncate64 ftruncate64 \
	    chflags fchflags \
	    insremque getttyent getusershell getpass ttyslot \
	    syslog syscall daemon \
	    mmap mmap64 munmap mprotect msync madvise mincore remap_file_pages\
	    mlock munlock mlockall munlockall \
	    efgcvt efgcvt_r qefgcvt qefgcvt_r \
	    hsearch hsearch_r tsearch lsearch \
	    err error ustat \
	    getsysstats dirname regexp \
	    getloadavg getclktck \
	    fgetxattr flistxattr fremovexattr fsetxattr getxattr \
	    listxattr lgetxattr llistxattr lremovexattr lsetxattr \
	    removexattr setxattr getauxval ifunc-impl-list

generated += tst-error1.mtrace tst-error1-mem.out

aux := init-misc
install-lib := libg.a
gpl2lgpl := error.c error.h

tests := tst-dirname tst-tsearch tst-fdset tst-efgcvt tst-mntent tst-hsearch \
	 tst-error1 tst-pselect tst-insremque tst-mntent2 bug-hsearch1 \
	 tst-mntent-blank-corrupt tst-mntent-blank-passno bug18240
ifeq ($(run-built-tests),yes)
tests-special += $(objpfx)tst-error1-mem.out
endif

CFLAGS-select.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-tsearch.c = $(uses-callbacks)
CFLAGS-lsearch.c = $(uses-callbacks)
CFLAGS-pselect.c = -fexceptions
CFLAGS-readv.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-writev.c = -fexceptions -fasynchronous-unwind-tables
CFLAGS-usleep.c = -fexceptions
CFLAGS-syslog.c = -fexceptions
CFLAGS-error.c = -fexceptions
CFLAGS-getpass.c = -fexceptions
CFLAGS-mkstemp.c = -fexceptions
CFLAGS-mkstemp64.c = -fexceptions
CFLAGS-getsysstats.c = -fexceptions
CFLAGS-getusershell.c = -fexceptions
CFLAGS-err.c = -fexceptions
CFLAGS-tst-tsearch.c = $(stack-align-test-flags)

include ../Rules

$(objpfx)libg.a: $(dep-dummy-lib); $(make-dummy-lib)

$(objpfx)tst-tsearch: $(libm)

tst-error1-ENV = MALLOC_TRACE=$(objpfx)tst-error1.mtrace
tst-error1-ARGS = $(objpfx)tst-error1.out
$(objpfx)tst-error1-mem.out: $(objpfx)tst-error1.out
	$(common-objpfx)malloc/mtrace $(objpfx)tst-error1.mtrace > $@; \
	$(evaluate-test)
