#!/bin/bash
PATH=/bin:/sbin:/usr/bin:usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

echo -e "Please input a filename, i will check the filename's type and permission. \n"
read -p "Input the filename: " filename
test -z $filename && echo "You must input filename" && exit 0
test -e $filename || echo "the file $filename is not exist" && exit 0
#test -z is used to check whether the string is empty


#check the file type
test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm wirteable"
test -x $filename && perm="$perm executable"

echo -e "The filename : $filename is a $filetype \n"
echo -e "The filename : $filename's permission are $perm"
