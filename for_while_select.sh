# /bin/sh

# case1:字符串用空格分隔,没有括号,没有逗号, 然后循环将其依次赋给变量.
for loop in 1 2 3 4 5
do
    echo "value is $loop"
done

for loop in "abcdefg" "hijklmn"
do
    echo "value is $loop"
done

LOVERS="tom rdd jake"

for lp in $LOVERS
do
    echo "my lover is $lp"
done

for file in $HOME/.bash*
do
    echo "filename: $file"
done

#for file in `pwd`/*.sh
#for lp in $(ls *.sh)
#for lp in `ls`
for lp in *.sh;
do
    echo "filename: $lp"
done


read -p "input the number to count for 1+2+3...+ your_input: " number
s=0
for((i=1;i<=number;i=i+1))
do
	s=$(($s+$i))
done

echo "the result is $s"

#for num in `seq 2 10` #2->start, 10-> end
#for num in $(seq 2 10)
#for num in `seq 10`
for ((num=0;num<10;num++))
do
    if [ `expr $num % 2 ` = 0 ]
    then
        echo "even number: $num"
    elif [ $num -eq 8 ]
    then
        echo "i am 8, and $0 will break out the for loop."
        break
    elif [ $num -lt 5 ]
    then
        echo "------- $num < 5 -------"
        continue
    fi
done


#others for demo
#for lp in $*;
#for file in /tmp;
arr=("a" "b" "c")
for lp in ${arr[@]}
do
    echo "$lp"
done
##
for i in {1..10};
do
    echo "{1..10} for type: $i"
done



################
"while command1 ; # this is loop1, the outer loop
do
   Statement(s) to be executed if command1 is true

   while command2 ; # this is loop2, the inner loop
   do
      Statement(s) to be executed if command2 is true
   done

   Statement(s) to be executed if command1 is true
done"

#simple demo
#while command1
#do
#    do some things here
#done
a=0
while [ "$a" -lt 10 ]    # this is loop1
do
   b="$a"
   while [ "$b" -ge 0 ]  # this is loop2
   do
      echo -n "$b "
      b=`expr $b - 1`
   done
   echo
   a=`expr $a + 1`
done




#############################
select drink in tea cofee water juice appe all none
do
   case $drink in
      tea|cofee|water|all) 
         echo "Go to canteen"
         ;;
      juice|appe)
         echo "Available at home"
      ;;
      none) 
         break 
      ;;
      *) echo "ERROR: Invalid selection" 
         break 
#        exit 1
      ;;
   esac
done


echo "a is 8 ,b is 4. Please select your method: "

a=8
b=4

select var in "a+b" "a-b" "a*b" "a/b"
do
    break
done

case $var in
    "a+b")
        echo 'a+b= '`expr $a + $b`;;
    "a-b")
        echo 'a-b= '`expr $a - $b`;;
    "a*b")
        echo 'a*b= '`expr $a \* $b`;;
    "a/b")
        echo 'a/b= '`expr $a / $b`;;
    *)
        echo "input error"
        exit 1

esac

#while [ "$yn" != "yes" -a "$yn" !=  "YES" ]
#do
#	read -p "input yes/YES to stop this program : " yn
#done
#echo "OK! you input the correct answer"

until [ "$yn" == "yes" -o "$yn" == "YES" ]
do
	read -p "input the yes/YES to stop this program: " yn
done
echo "OK! you input the correct answer"
