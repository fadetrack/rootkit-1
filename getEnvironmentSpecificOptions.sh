#!/bin/sh

syscallTableAddress=$(sudo grep " sys_call_table$" /boot/System.map-$(uname -r) | cut -f 1 -d " ")
setPagesRwAddress=$(sudo grep " set_pages_rw$" /boot/System.map-$(uname -r) | cut -f 1 -d " ")
setPagesRoAddress=$(sudo grep " set_pages_ro$" /boot/System.map-$(uname -r) | cut -f 1 -d " ")
acctProcessAddress=$(sudo grep " acct_process$" /boot/System.map-$(uname -r) | cut -f 1 -d " ")
doExitAddress=$(sudo grep " do_exit$" /boot/System.map-$(uname -r) | cut -f 1 -d " ")

echo "// This is a file generated by 'getEnvironmentSpecificOptions.sh',"
echo "// that will be automatically included in constants.h. DO NOT EDIT"
echo "#define SYSCALL_TABLE   0x$syscallTableAddress"
echo "#define PAGES_RW        0x$setPagesRwAddress"
echo "#define PAGES_RO        0x$setPagesRoAddress"
echo "#define ACCT_PROCESS    0x$acctProcessAddress"
echo "#define DO_EXIT         0x$doExitAddress"

