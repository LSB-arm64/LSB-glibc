#!/bin/bash

echo "$TET_ROOT"

#编译测试用例源码
#make so
#make -i tst
#make mk

for dir in $TET_ROOT/test_sets/tset/lsb_glibc/lsb_glibc_*/src; do
#for dir in $TET_ROOT/test_sets/tset/lsb_glibc/lsb_glibc_argp/src; do
  echo $dir
  cd $dir

  make so > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo "make so: error"
  fi
  make -i tst > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo "make tst: error"
  fi
  make mk > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo "make mk: error"
  fi

#将当前目录下的可执行文件复制到TESTROOT目录
  for file in ` ls $dir `
    do
      if [ -x $file ] 
      then
        echo "$file"
#        echo "$(pwd | awk -F '/' '{print $(NF-2) "/" $(NF-1) "/" $(NF)}')"
        curDir=`pwd | awk -F '/' '{print $(NF-2) "/" $(NF-1) "/" $(NF)}'`
        cp $file $TET_ROOT/test_sets/TESTROOT/tset/$curDir
      fi
    done
done
