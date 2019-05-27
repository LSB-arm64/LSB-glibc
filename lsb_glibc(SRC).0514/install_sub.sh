#!/bin/bash

#----------
#setlocales
#----------
echo "Creating test locales......"

echo "Please enter root password:"
su root -c "localedef -c -f ${VSXDIR:?}/subsets/lsb_glibc/locales/ISO-8859-1 -i ${VSXDIR:?}/subsets/lsb_glibc/locales/de_DE de_DE.ISO-8859-1"

echo "Please enter root password:"
su root -c "localedef -c -f ${VSXDIR:?}/subsets/lsb_glibc/locales/UTF-8 -i ${VSXDIR:?}/subsets/lsb_glibc/locales/de_DE de_DE.UTF-8"

echo "Please enter root password:"
su root -c "localedef -c -f ${VSXDIR:?}/subsets/lsb_glibc/locales/ANSI_X3.4-1968 -i ${VSXDIR:?}/subsets/lsb_glibc/locales/en_US en_US.ANSI_X3.4-1968"

echo "Please enter root password:"
su root -c "localedef -c -f ${VSXDIR:?}/subsets/lsb_glibc/locales/EUC-JP -i ${VSXDIR:?}/subsets/lsb_glibc/locales/ja_JP ja_JP.EUC-JP"

#----------
#compile
#----------

. ${VSXDIR:?}/subsets/lsb_glibc/compile_testcase.sh
