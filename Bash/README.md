玩转Bash脚本
===========
Linux/Unix下最流行的shell脚本----Bash的个人学习记录
----------
##前言
Bash全称<kbd>Bourne Again Shell</kbd>,之所以称为再次`Again`，是因为在此之前有一个流行的Unix下的Shell，名为*Bourne Shell*。<br>
Bash脚本可以用狭义和广义两个角度来理解：
- 狭义角度讲，Bash是一门编程语言，更为确切的说是一种脚本语言。
- 广义角度讲，Bash包括内嵌命令和外部命令，比如sed，grep等等。

|![](http://tiswww.case.edu/php/chet/img/bash-org.jpg) 
|:------|-------:|
<br><br><br><br>
>Shell
>>Shell直译为`壳`的意思，与kernel`内核`相对。内核是管理计算机所有硬件的总控制机构，操作系统不允许用户直接对硬件进行操作，因此我们要与系统底层进行交互，就需要Shell`壳`，Shell接收用户输入的命令，然后去和内核进行通信，从而控制系统底层。比如Windows系统中的`cmd`也属于一种Shell。

>>>泛泛而言，Shell不仅仅指代与计算机底层进行交互的壳。基本上所有提供用户与某种内核进行交互的软件都可称为壳，这里的内核不单指系统内核。比如Python中，我们有一个IDLE，这个就可称为Python的Shell。另外，MATLAB软件的主窗口也提供了命令的交互功能，这就是用户与MATLAB软件内核交互的Shell。

##快捷键
Ctrl加：

|按键|描述|
|----|----|
|c|结束当前任务|
|z|暂停当前任务，并放到后台|
|s|停止屏幕输出|
|q|恢复屏幕输出|
|l|清屏|
|d|EOF标准输入结束符|
以上皆为Ctrl组合键。
