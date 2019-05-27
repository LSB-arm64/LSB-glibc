# 这个脚本用来为每个测试用例生成makefile文件
# 这个脚本是用src目录下的makefile运行的, 所以工作目录为src/

import sys,os

def mk_mf(filename,envs,args):
    # 第一个参数是文件名, 首先创建一个目录用来放测试用例
    try:
        os.mkdir("../"+filename)
    except FileExistsError as e:
        None

    # 这里对环境变量和运行参数进行处理
    # 施工中...
    
    # 然后创建makefile
    with open("../"+filename+"/makefile","w") as makefile:
        source=r""" 
CC = cc
LIBDIR = $(TET_ROOT)/lib/tet3
INCDIR = $(TET_ROOT)/inc/tet3
VSXDIR = $(TET_ROOT)/test_sets/SRC
VSXLIB = $(VSXDIR)/LIB
VSXBIN = $(VSXDIR)/BIN

INSTDIR := $(shell pwd | awk -F '/' ' {1} ')
DEFINES = -D_GNU_SOURCE
ARGS = -DFILENAME=\"{0}\"

CFLAGS = -I$(INCDIR) -I$(VSXDIR)/INC -I$(VSXDIR) $(DEFINES) $(ARGS)
LIBS = $(VSXLIB)/genlib.a $(VSXLIB)/vlib.a $(LIBDIR)/libapi.a
SYSLIBS =

CHMOG =        $(VSXBIN)/chmog
INSTOWN =       vsx0
INSTGRP =       vsxg0
INSTMODE =      755

all: {0}
	@chmod a+x {0}
	@echo "$(INSTDIR)"

INSTALL:        $(TET_ROOT)/test_sets/TESTROOT/tset/$(INSTDIR)/{0}

$(TET_ROOT)/test_sets/TESTROOT/tset/$(INSTDIR)/{0}: {0}
#	@mv {0} $(TET_ROOT)/test_sets/TESTROOT/tset/$(INSTDIR)
		$(CHMOG) $(INSTMODE) $(INSTOWN) $(INSTGRP) -m $? $@
		@echo " $? installed in $@"

{0}: ../lsb_test-skeleton.c 
	$(CC) $(CFLAGS) -o $@ $< $(LIBDIR)/tcm.o $(VSXLIB)/startup.o $(LIBS)
""".format(filename, "{print $$(NF-2) \"/\" $$(NF-1) \"/\" $$(NF)}")
        makefile.write(source)



if __name__=="__main__":
    mk_mf(sys.argv[1],sys.argv[2],sys.argv[3])
