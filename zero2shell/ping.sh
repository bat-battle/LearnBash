#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

network="192.168.1"
for sitenu in $(seq 1 100)
do
	ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0  || result=1
	echo $result
#	-c mean count  -w : specify timeout
	if [ "$result" == 0 ];then
		echo "Server ${network}.${sitenu} is up. "
	else
		echo "Server ${network}.${sitenu} is down."
	fi
done
