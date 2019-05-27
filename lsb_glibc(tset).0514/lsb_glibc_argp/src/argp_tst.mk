CFLAGS-argp-help.c = $(uses-callbacks) -fexceptions
CFLAGS-argp-parse.c = $(uses-callbacks)
CFLAGS-argp-fmtstream.c = -fexceptions
bug-argp1-ARGS = -- --help
bug-argp2-ARGS = -- -d 111 --dstaddr 222 -p 333 --peer 444
tests		= argp-test tst-argp1 bug-argp1 tst-argp2 bug-argp2
