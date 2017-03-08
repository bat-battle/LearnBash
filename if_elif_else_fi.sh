#! /bin/sh
########################learn to if-elif-else-fi#######################
"-eq      等于                  if [ "$a" -eq "$b" ]
-ne      不等于                if [ "$a" -ne "$b" ]
-gt      大于                  if [ "$a" -gt "$b" ]
-ge      大于等于              if [ "$a" -ge "$b" ]
-lt      小于                    if [ "$a" -lt "$b" ]
-le      小于等于               if [ "$a" -le "$b" ]
<        小于（需要双括号）           (( "$a"< "$b" ))
<=       小于等于(...)                (("$a" <= "$b" ))
>        大于(...)                    (("$a" > "$b" ))
>=       大于等于(...)                (("$a" >= "$b" ))"
############################
#文件的逻辑判断使用规则如下：
#-b file            若文件存在且是一个块特殊文件，则为真
#-c file            若文件存在且是一个字符特殊文件，则为真
#-d file            若文件存在且是一个目录，则为真
#-e file            若文件存在，则为真
#-f file            若文件存在且是一个规则文件，则为真
#-g file            若文件存在且设置了SGID位的值，则为真
#-h file            若文件存在且为一个符合链接，则为真
#-p file            若文件存在且为一已命名管道，则为真
#-r file            若文件存在且可读，则为真
#-s file            若文件存在且其大小大于零，则为真
#-u file            若文件存在且设置了SUID位，则为真
#-w file            若文件存在且可写，则为真
#-x file            若文件存在且可执行，则为真
#-o file            若文件存在且被有效用户ID所拥有，则为真
#f1-nt f2                   文件f1是否比f2新
#f1 -ot f2                   文件f1是否比f2旧
#f1 -ef f2                   文件f1和f2是否硬连接到同一个文件"
#############################
#字符串逻辑判断使用规则如下:
#string             若string长度为0，则为真
#-n string          若string长度不为0，则为真
#string1 = string2  若两个字符串相等，则为真
#string1 != string2 若两个字符串不相等，则为真
#############################
#表达式(expr)逻辑判断使用规则如下:
#expr可以是任何有效的测试表达式
#!expr              若expr为假则复合表达式为真
#expr1 -a expr2     若expr1和expr2都为真则整式为真
#expr1 -o expr2     若expr1和expr2有一个为真则整式为真
#注意：以上三个可以联合使用
#############################
#SHELL特殊变量:
#$@                 所有这些参数都分别被双引号引住。若一个脚本接收到两个参数，$@等价于$1$2
#$?                 前一个命令执行后的退出状态
#$0                 正在被执行命令的名字。对于shell脚本而言，这是被激活命令的路径
#$n                 该变量与脚本被激活时所带的参数相对应。n是正整数，与参数位置相对应($1,$2…)
#$#                 提供脚本的参数号
#$*                 所有这些参数都被双引号引住。若一个脚本接收两个参数，$*等于$1$2
#$$                 当前shell的进程号。对于shell脚本，这是其正在执行时的进程ID
#$!                 前一个后台命令的进程号
############################
echo "number:$#"
echo "scname:$0"
echo "first :$1"
echo "second:$2"
echo "argume:$@"
echo "show parm list:$*"
echo "show process id:$$"
echo "show precomm stat: $?" #ls -l /tmp;echo $?; ls not_exist;echo $?
#############################

#同学们，补充说明一下多个判断条件的格式，大家可以记住一条规则即可:除了else不需要then，
#其他的if,elif都要。其次if和fi要成对出现。最后针对不同类型数据需要不同判断方式！
#再搞定何处需要空格，何处不能有空格。
if [ 2 -lt 4 ]
then 
    if [ "a" != "b" ]
    then
        if [ -n "i am not empty" ]
        then
            echo "i am not empty"
        fi
        echo "a != b"
    fi
    if [ "a" = "a" ]
    then
        if [ -z "" ]
        then
            echo "yes, i am empty"
        fi
        echo "a = a"
    fi
  echo "2<4" 
elif [ 3 -ne 4 ];
then
  echo "3 !=4"
else
    echo "else"
fi 


a=2
b=1
#先计算 $a -eq 2 ，只有在这个为 True 的时候才会去比较 $b -eq 2
if [ $a -eq 2 ] && [ $b -gt 2 ] && [ $a -le $b ]
then
    echo "[ $a -eq 2 ] && [ $b -gt 2 ]"
    echo "先计算 $a -eq 2 ，只有在这个为 True 的时候才会去比较 $b -eq 2"
elif [ $a -eq 2 -a $b -eq 2  -o $a -ge $b ]
then echo "[ $a -eq 2 -a $b -eq 2 ] "
    echo "先计算好 $a -eq 2 和 $b -eq 2 的结果，再来判断 [ ] 内整体表达式是否为 Ture ]"
fi

[ -d "not an dir" ] || echo "not an dir"
#####################demo#######################
#set -x

echo please input an intger:
read num
if [ $num = "1" ];then
    echo "111111"
elif [ $num = "2" ];then
    echo "222222"
else echo "error"
fi 


for((i=0;i<=$num;i++));do
   echo "the loop number i: $i";
done;

while [[ $num -gt 5 ]];do
    echo"the loop number of while case is: $i";
    sleep 3;
   ((i--));
done;

until [[ $a -gt 6 ]];do
         echo"the until number is: $a";
         ((a++));
done;

case $1 in
start | begin)
   echo "start something" 
   ;;
stop | end)
   echo "stop something" 
   ;;
*)
   echo "Ignorant" 
   ;;
esac

############################

if [ -d $1 ]; then
         echo "$1 it is a directory."
elif [ -f "$1" ]; then
         echo "$1 is a file."
else echo "no parameter."
fi

############################
