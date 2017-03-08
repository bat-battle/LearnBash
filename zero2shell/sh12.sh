#!/bin/bash
#	Use function to repeat information.
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH

function printit(){
#	echo -n "your choice is "
	echo -e "your choice is $1 \n"
}
#the parameters "-n" mean youcan keep the line

echo "This program will print your selection !"
read -p "input your choice :" choice
case $choice in
	"one")
		printit 1; 
#		echo $choice | tr 'a-z' 'A-Z'
		;;
	"two")
		printit 2;
#		echo $choice | tr [a-z] [A-Z]
		;;
	"three")
		printit 3; 
#		echo $choice | tr [a-z] [A-Z]
		;;
	*)
		echo "you must input the right parameters";
		exit
		;;

esac
