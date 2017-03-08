#!/bin/sh

#set -x
cd $HOME
let num=0
tarname="delete"

for fd in `ls $HOME`
do
    if [ -f $fd ]
    then
        echo "file name is: $fd"
        tar -rf testtar $fd
        ((++num))
    fi
done
echo "compressed $num archive files from $HOME dictory."

tar -zcvPf /tmp/"$tarname".tar.gz testtar
#set +x
