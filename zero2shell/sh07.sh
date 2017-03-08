#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

##### script args #####

#$# 是传给脚本的参数个数
#$0 是脚本本身的名字
#$1 是传递给该shell脚本的第一个参数
#$2 是传递给该shell脚本的第二个参数
#$@ 是传给脚本的所有参数的列表
#$* 是以一个单字符串显示所有向脚本传递的参数，与位置变量不同，参数可超过9个
#$$ 是脚本运行的当前进程ID号
#$? 是显示最后命令的退出状态，0表示没有错误，其他表示有错误.
#区别：@*

#相同点：都是引用所有参数
#不同点：只有在双引号中体现出来。假设在脚本运行时写了三个参数（分别存储在12
#3）则"*" 等价于 “12 3"（传递了一个参数）；而“@" 等价于 "1""2"
#"$3"（传递了三个参数）

echo "The script name is  $1"
echo "Total parameters number $#"
[ "$#" -lt 2 ] && echo "The number of parameter is less than 2. Stop here ." && exit 0
#the parameter "-lt" mean "< " 
echo "your whole parameter is '$@'"
echo "the 1st parameter is $1"
echo "the 2nd parameter is $2"
