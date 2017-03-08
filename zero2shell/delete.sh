# /bin/sh
for i
do 
echo $i
done
#########################
sum=0
for((i=0; i<=100; i++))
do
    ((sum=sum+i))
done
echo $j
#########################
sum=0
for((i=1;i<=100;i++))
do
        sum=$((i+sum))
done
echo $sum
#########################
sum=0
for((i=1;i<=100;i++))
do
        sum=$((i+$sum))
done
echo $sum
########################
i=1
#while ((i <=100 ))
until ((i >100 ))
do
  ((j=j+i))
  ((i++))
done
echo $j

i=1
while [ $i -le 100 ] 
#while [[ $i -le 100 ]]
do
  let j=j+i
  i=`expr $i + 1`    #same as ((i++)) or  let i=i+1
done
echo $j

sum=0
for num in `echo {1..100}`
do
    sum=`expr $sum + $num`
done
echo $sum

########################
########################
########################
########################
########################
########################
########################
########################
########################

seq 1 100 | tr '\n' '*'|sed 's#\*$#''#g'|bc

chars=0
for ((i=1; $i<=100; i++ ));do
chars="$chars+$i"
done
echo $chars|bc 

i=100
echo $((i*(i+1)/2))

seq 100 |awk '{total+=$1} END {print total}'

seq 100 |awk '{total=total+$1} END {print total}'

echo {1..100}|tr " " "+"|bc

echo {1..100}|tr " " "\n"|awk '{total+=$1} END {print total}'

seq -s + 100|bc
seq -s "+" 100|bc
seq -s 0'-' 100
seq -w 0 .05 .10


let "t1 = ((a = 5 + 3, b = 7 - 1, c = 15 - 4))"

echo "t1 = $t1, a = $a, b = $b"
echo {a..z}



for i in `seq 4`
do
    for j in `seq 0 2 10`
    do
        if [ $j -eq 8 ]
        then
            break 23
        else
            echo "i=$i,$j"
        fi
    done
done

hello()
{
    num=1
    echo "hello boy~ It's our $num meeting"
    let num=num+1
}
hello
hello
hello
