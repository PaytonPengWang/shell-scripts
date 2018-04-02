#!/bin/bash
#

bootspace=`df -Th | grep 'boot' | awk '{print $6}' | cut -d '%' -f1`

if [ bootspace -gt 14 ] then
	echo 'boot space greater than 14%'
else 
	echo 'boot space less than 14%'
fi
