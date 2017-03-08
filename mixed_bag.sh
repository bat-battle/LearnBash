#! /bin/sh

_strace="i am test"
old=520
new=521
#未定义，返回new
ret=${old:-new}
#为定义，设置为new
ret=${old:=new}
#未定义，退出当前脚本，并显示new的信息
ret=${old:?new}
#存在且非空，返回new
ret=${old:+new}
echo ret is ${ret}
echo _${_strace}_
who_am_i(){
    who|awk `{print 1}`|sort
}
#set +x
