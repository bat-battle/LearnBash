#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

alluser=$(cat /etc/passwd | awk -F ":" '{print $1}' | sort -f)
count=0
for user in $alluser
do
    count=$(($count+1))
    echo $count : $user
done

echo
echo Total $count users... 
