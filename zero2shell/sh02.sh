#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH

read -p "please input your first name " firstname
read -p "please input your last name " lastname
echo -e "your name:$firstname $lastname \n"
