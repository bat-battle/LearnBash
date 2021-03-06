文件系统操作命令： 
1. cat：可以显示文件的内容（经常和more搭配使用），或将多个文件合并成一个文件。
2. chgrp：用来改变文件或目录所属的用户组，命令的参数以空格分开的要改变属组的文件列表，文件名支持通配符，如果用户不是该文件的所有者，则不能改变该文件的所属组。
3. chmod：用于改变文件或目录的访问权限，该命令有两种用法：一种是使用图形化的方法，另一种是数字设置法。
4. chown：用来将指定用户或组为特定的所有者。用户可以设置为用户名或用户ID，组可以是组名或组ID。特定的文件是以空格分开的可以改变权限的文件列表，文件名支持通配符。
5. clear：用来清除终端屏幕。
6. cmp：用来比较两个文件的大小。
7. cp：（copy）可以将文件或目录复制到其他目录中，就如同Dos下的copy命令一样，功能非常强大。在使用cp命令时，只需要指定源文件名或目标目录即可。
8. cut：用来移除文件的部分内容。
9. diff：用来找出两个文件的不同之处。
10. du： 用来显示磁盘的剩余空间的大小。
11. file：用来显示文件的类型。
12. find：用来在目录中搜索文件，并执行指定的操作。
13. head：只查看文件的头几行内容，而不必浏览整个文件。
14. ln：可以在文件之间创建链接，实际上是给某个文件指定一个访问它的别名。
15. less：用法与more类似，可以查看超过一屏的文件内容，不同的是less除了可以按空格键向下显示文件外，还可以利用方向键来滚动显示文件，要结束浏览，只要在less的提示符“：”后按Q即可。
16. locate：可用于查找文件，且比find命令的搜索速度快。
17. ls（list）：用来显示当前目录中的文件和子目录列表。
18. mkdir(make directory)：建立子目录。
19. more：用于显示内容超过一屏的文件，为了避免文件内容显示瞬间就消失，可以使用more命令让文件显示满一屏时暂停，在按下任意键的时候继续显示下一屏的内容。
20. rmkdir(remove directory)：用来删除“空”的子目录或无用的目录文件。
21. mv(move)：可以将文件以及目录移到其他位置，或更改文件以及目录的名称。
22. pico：可指定文本的编辑方式。
23. pwd(print working directory)：可显示用户当前所在的目录。
24. rm：用来删除系统中过时或无用的文件，可以删除目录中的文件或目录本身，对于链接文件，原有文件保持不变。
25. sort：将文本文件自动分类。
26. stat：用于显示文件或文件系统的状态。
27. Strings：显示文件中要打印的字符串。
28. tail：输出文件的结尾。
29. touch：改变文件的时间戳。
30. umask：用于启动bash shell。
31. uniq：移除已分类文件中的重复文本行。
32. vi：启动vi文本编辑器。
33. wc：显示文件中字节、词组合文本行的数目。
34. whereis：查找特定目录下的原始程序，二进制程序或用户手册等文件的位置。
35. man：如果用户对某个命令想了解更详细的话，可使用此命令。
36. dd：复制一个文件。
37. df：查看一个文件系统的磁盘空间使用情况。
38. edquoat：设置用户与用户组的磁盘空间限制，即Windows系统中的配额。
39. fdformat：格式化软盘。
40. fdisk：执行Linux下的磁盘分区。
41. mkfs：建立一个Linux文件系统。
42. mkswap：创建一个Linux交换分区。
43. mount：挂载一个文件系统。
44. quota：限制和显示用户可用的磁盘空间。
45. swapon，swapoff：启用或取消设备和文件的交换页。
46. quotaon，quotaoff：启用或取消quota限制。
47. umount：取消文件系统的装备。
系统管理命令
1. finger：查询用户信息，也能查看默认的用户环境。
2. ftp：标准的文件传输协议的用户接口，是在网络上传输文件最简单有效的方法。
3. host：用于DNS查询。
4. hostname：用于显示或设置系统的主机名。
5. ifconfig：用于配置网卡接口。（可以使用down或up参数来禁用或启用某个网卡接口）
6. mail：发送和接收邮件。
7. netstat：显示网络连接、路由表和网络接口信息，用户可以知道目前那些网络连接正在运行。
8. ping：此命令用于测试本计算机和网络上其它的计算机是否相连。
9. rlogin：远程登陆命令，该命令与telnet命令很相似，允许用户启动远程系统的交互会话。
10. rcp：rcp(remote file copy)命令是远程文件复制命令，该命令用于在计算机之间复制文件，有两中格式，一种格式用于文件动文件的复制，另一种用于把文件或目录复制到其他文件目录中。
11. route：此命令用于显示或设置IP路由表。
12. tcpdump：此命令用于测试网络的通信量。
13. talk：此命令可用于事项网络用户的适时交谈，但是必须将双方系统的信息加入各自的/etc/hosts文件中，以相互识别。
14. telnet：此命令用于通过网络登陆远程计算机，如同操作本地计算机一样。
15. wall：wall(write all)命令可以用于发送消息给登陆本机的用户。在发送消息时，可直接输入要发送的消息，也可以把文件当成消息发送。
16. wget：此命令用于Linux环境下从Internet上下载文件，支持http和ftp协议，支持代理服务器和断点连续传功能，能够递归远程主机上的目录，查找合乎要求的的文件并下载到本地硬盘上。Wget命令可以在后台运行，截获并忽略hantfup信号，因此用户退出登陆后，仍可继续运行。
17. &，bg：&，bg命令是后台执行命令，有时候用户执行的程序可能要话很多时间，如果放在前台执行，可能无法继续其他操作，最好将他放在后台执行。
18. fg：fg命令是前台执行命令，如果用户有程序在后台运行，可以通过fg命令将程序从后台移到前台执行。
19. jobs：此命令用于显示正在后台执行的任务清单。Bg,fg,jobs命令都属于bash命令，
20. kill：此命令用于终止一个程序，例如：#[root@rathat9 root]kill 3793
21. ps：此命令用于显示程序的状态。
22. top：此命令用于显示当前CPU进程。
23. at batch atp atrm：这些命令用于排序，检查或删除后台运行的任务。
Linux与用户有关的命令：
1. passwd命令：更改用户口令。
格式：passwd [用户名]
2. su命令：可以让一个普通用户拥有超级用户或其他用户的权限，也可以让超级拥护以普通用户的身份做一些事情。
格式：su[选项][?][使用者账号]
说明：若没有指定的使用者账号，则系统预设值为超级用户root。该命令中个选项的含义分别为：
-c：执行一个命令后就结束。
-：加了这个减号的目的是使环境变量和欲转换的用户相同。
-m：保留环境变量不变。
Linux系统管理命令：
1. wall命令：对全部以登陆的用户发送信息。
2. write命令：向系统中某一用户发送信息。
格式：write 用户账号 [终端名称]
3. mesg命令：设定是否允许其他用户用write命令给自己发送信息。
如果允许输入命令：mesg y
如果不允许输入命令：mesg n
4. sync命令：在关闭Linux系统是使用的。Sync是强制把内存中的数据写回硬盘，以免数据丢失。
5. shutdown命令：可以安全的关闭或重启Linux它在系统关闭之前给系统上的所有登陆用户提示一条警告信息。
格式：shutdown [选项][时间][警告信息]
命令中选项的含义：
-k：并不真正关机，而只是发出警告信息给所有用户。
-r：关机后立即重新启动。
-h：关机后不重新启动。
-f快速关机，重新启动时跳过fsck。
-n：快速关机，不经过init程序。
-c：取消一个已经运行的shutdown。
6. free命令：查看当前系统内存的使用情况，它显示系统中剩余及已用的物理内存和交换内存，以及共享内存和被核心使用的缓冲区。
格式：free [-b | -k |-m]
命令中各个选项的含义：
-b：以字节为单位显示。
-k：以K字节为单位显示。
-m：以兆字节为单位显示。
7. uptime命令：显示系统已经运行了多长时间，它依次显示下列信息：现在时间、系统已经运行了多长时间、目前有多少登陆用户、系统在过去的1分钟、5分钟和15分钟内的平均负载。
8. df命令：检查文件系统的磁盘空间占用情况。
格式：df [选项]
说明：df命令可显示所有文件系统对I节点和磁盘块的使用情况。
命令中各个选项的含义：
-a：显示所有文件系统的磁盘使用情况，包括0块（block）的文件系统。
-k：以k字节为单位显示。
-i：显示i节点信息，而不是磁盘块。
-t：显示各指定类型的文件系统的磁盘空间使用情况。
-x：列出不是某一指定类型文件系统的磁盘空间使用情况。
-T：显示文件系统类型。
9. du命令：显示磁盘空间的使用情况。统计目录（或文件）所占磁盘的大小。
格式：du [选项] [Names…]
说明：该命令逐级进入指定目录的每一个子目录并显示该目录占用文件系统数据块（1024字节）的情况。若没有给出Names，则对当前目录进行统计。
命令中各个选项的含义：
-s：对每个Names参数只给出占用的数据块总数。
-a：递归的显示指定目录中各文件及子孙目录中个文件占用的数据块数。若既不指定-s，也不指定-a，则显示Names中的每一个目录及其中的各子目录所占的磁盘块数。
-b：以字节为单位列出磁盘空间使用情况（系统缺省以k字节为单位）。
-k：以1024字节为单位列出磁盘空间的使用情况。
-c：最后再加上一个总计（系统缺省设置）。
-l：计算所有的文件大小，对硬链接文件，则计算多次。
-x：跳过在不同文件系统上的目录不予统计。
10. dd命令：把指定的输入文件拷贝到指定的输出文件中，并且在拷贝过程中可以进行格式转换。
格式：dd [选项]
命令中各个选项的含义：
if = 输入文件（或设备名称）。
of = 输出文件（或设备名称）。
ibs = bytes 一次读取bytes字节，及读入缓冲区的字节数。
skip = blocks 跳过读入缓冲区开头的ibs*blocks块。
obs = bytes 一次写入bytes字节，及写入缓冲区的字节数。
bs = bytes 同时设置读/写缓冲区的字节数（等于设置ibs和obs）.
cbs = byte 一次转换bytes字节。
count = blocks 只拷贝输入的block块。
conv = ASCⅡ 把EBCDIC码转换为ASCⅡ。
conv = ebcdic 把ASCⅡ码转换为EBCDIC码。
conv = ibm ibm把ASCⅡ码转换为alternate EBCDIC码。
conv = block 把变动位转换成固定字符。
conv = ublock 把固定位转换成变动位。
conv = ucase 把字母由小写转换为大写。
conv = lcase 把字母由大写转换为小写。
conv = notrunc 不截短输出文件。
conv = swab 交换每一对输入字节。
conv = noerror 出错是不停止处理。
conv = sync 把每个输入记录的大小都调到ibs的大小（用NUL填充）。
11. fdformat命令：低级格式化软盘。
格式：format [-n] device
说明：-n 软盘格式化后不作检验。
12. echo命令：在显示器上显示一段文字，一般起到一个提示作用。
格式：echo [-n] 字符串
13. cal命令：显示某年某月的日历。
格式：cal [选项] [月 [年]]
命令中各个选项的含义：
-j：显示出给定月中的每一天是一年中的第几天（从1月1日算起）。
-y：显示出整年的日历。
14. date命令：显示和设置系统日期和时间。
格式：date [选项] 显示时间格式 （以 + 开头，后面接格式）
date [选项] 设置时间格式
命令中各个选项的含义：
15. clear命令：清除屏幕上的信息。
Vi的基本命令：
1. 移动光标：
Ctrl + b：上滚一屏
Ctrl + f：下滚一屏
Ctrl + d：下滚半屏
Ctrl + u：上滚半屏
G： 移到文件最后
W：移到下个字的开头
B：跳至上个字的开头
2. 删除
x：删除当前光标所在后面一个字符
#x：删除当前光标所在后面#个字符。例如，5x表示删除5个字符。
dd：删除当前光标所在行
#dd：删除当前光标所在后面#行。例如，5dd表示删除字光标算起的5行。
：l，#d：例如，：1，12d表示删除自行1至行12的文字
X：删当前光标的左字符
D：删至行尾
3. 更改
cw：更改光标处的字到此单字的字尾处
c#w：例如，c3w表示更改3个字
cc：修改行
c：替换到行尾
4. 取代
r：取代光标处的字符
R：取代字符直到按ESC为止
5. 复制
yw：拷贝光标处的字到字尾只缓冲区
P：把缓冲区的资料贴上来
yy：拷贝光标所在之行至缓冲区
#yy：例如：5yy，拷贝光标所在之处以下5行至缓冲区
Linux文件的复制，删除和移动命令
1.cp命令：该命令的功能是将给出的文件或目录拷贝到另一文件或目录中，同MSDOS下的COPY命令一样，功能十分强大。
语法：cp[选项]源文件或目录，目标文件或目录
说明该命令把指定的源文件复制到目标文件或把多个源文件复制到目标目录中。
该命令的各项选项含义如下：
-a：该选项通常在拷贝目录是使用。他保留链接，文件属性，并递归地拷贝目录，其作用等于dpr选项的组合。
-d：拷贝是保留链接
-f：删除已经存在的目标文件而不提示。
-I：和 f选项相反，在覆盖目标文件之前将给出提示要求拥护确认。回答y时目标文件将被覆盖，是交互式拷贝。
-p：此时cp除复制源文件的内容外，还将把其修改时间和反问权限也复制到新文件中。
-r；若给出的源文件是一目录文件，此时cp将递归复制该目录下所有的子目录和文件。此时目标文件必须为一个目录名。
-L：不作拷贝，只是链接文件。
需要说明的是，为防止用户在不经意的情况下用cp命令破坏另一个文件，如用户指定的目标文件名已存在，用cp 命令拷贝文件后，这个文件酒会被新源文件覆盖，因此，建议用户在使用cp命令拷贝文件时，最好使用I选项。
2.mv命令：用户可以使用mv命令来为文件或目录改名或将文件由一个目录移入另一个目录中。该命令如同MS-DOS下的ren 和 move 的组合。
语法：mv[选项]源文件或目录 目标文件或目录。
说明：视mv命令中第二个参数类型的不同(是目标文件还是目标目录)，mv命令将文件重命名或将其移至一个新的目录中。当第二个参数类型是文件时，mv命令完成文件重命名，此时，源文件只能有一个(也可以是源目录名)，他将所给的源文件或目录重命名为给顶的目标文件名。当第二个参数是已存在的目录名称时，源文件或目录参加参数可以有很多个，mv命令将个参数指定的源文件均移至目标目录中。在跨文件系统移动文件时，mv先拷贝，再将原有文件删除，而链至该文件的链接也将丢失。
命令中各选项的含义为：
-I：交互方式操作。如果mv操作将导致对已存在的目标文件的覆盖，此时系统询问是否重写，要求用户回答y或n，这样可以避免误覆盖文件。
-f：禁止交互操作。在mv操作要覆盖某已有的目标文件是不给任何指示，指定此选项后，I选项将不再起作用。
如果所给目标文件(不是目录)已存在，此时该文件的内容将后备新文件覆盖，为防止用户用mv命令破坏另一个文件，使用mv命令移动文件时，最好使用I选项。
3.rm命令：用户可以用rm命令删除不需要的文件。该命令的功能问删除一个目录中的一个或多个文件或目录，他也可以将某个目录及其下的所有文件及子目录均删除。对于链接文件，只是断开了链接，源文件保持不变。
Rm命令的一般形式为：
Rm [选项]文件……
如果没有使用-r选项，则rm不会删除目录。
该命令的各选项含义如下：
-f：忽略不存在的文件，从不给出提示。
-r：指示rm将参数中列出的全部目录和子目录均递归地删除。
-I：进行交互式删除。
使用rm命令要小心。因为一旦文件被删除，他是不能被恢复的。为了防止这种情况的发生可以使用I选项俩逐个确认要删除的文件。如果用户输入y，文件将被删除。如果输入任何其他东西，文件则不会删除。
Linux目录的创建与删除命令：
1. mkdir命令
功能：创建一个目录(类似MS-DOS下的md命令)。
语法：mkdir[选项]dir-name
说明：该命令创建由dir-name命名的目录。要求创建目录的用户在当前目录中(dir-name的父目录中)具有写权限，并且dirname不能是当前目录中已有的目录或文件名称。
命令中个选项的含义为：
-m：对新建目录设置存取权限。也可以用chmod命令设置。
-p：可以是一个路径名称。此时若路径中的某些目录尚不存在，加上此选项后，系统将自动建立好那些尚不存在的目录，即一次可以建立多个目录。
2. rmdir命令
功能：删除空目录。
语法：rmdir[选项]dir-name。/
说明：dir-name表示目录名。该命令从一个目录中删除一个或多个子目录项。需要特别注意的是，一个目录被删除之前必须是空的。Rm-r dir 命令可代替rndir，但是有危险性。删除某目录时也必须具有对父目录的、写权限。
命令中个选项的含义为：
-p递归删除目录dirname，当子目录删除后其父目录为空时，也一同被删除。如果整个路径被删除或者由于某种原因保留部分路径，则系统在标准输出上显示相应的信息。
3. cd命令
功能：改变工作目录。
语法：cd[directory]
说明：该命令将当前目录改变至directory所指定的目录。若没有指定directory，则回到用户的主目录。为了改变到指定目录，用户必须拥有对指定目录的执行和读权限。
该命令可以使用通配符(如”*,_”这样的通配符号)。
4. pwd命令
在Linux层次结构中，用户可以在被授权的任意目录下利用mkdir命令创建新目录，也可以利用cd命令从一个目录转换到另一个目录。然而，没有提示符来告知用户目前处于哪一个目录中。想要知道当前所处的目录，可以用pwd命令，该命令显示整个路径名。
语法：pwd
说明：此命令显示出当前工作目录的绝对路径。
5. ls命令
ls是list的简写，其功能为列出目录的内容。这是拥护最常用的一个命令之一，因为用户需要不时地查看某个目录的内容，该命令类似于DOS下的dir命令
语法：ls[选项][目录或是文件]
对于每个目录，该命令将列出其中的所有子目录与文件。对于每个文件，ls将输出其文件名以及所要求的其他信息。默认情况下，输出条目按字母顺序排序。但未给出目录名或是文件名时，就显示当前目录的信息。
命令中各个选项的含义：
-a：显示指定目录下所有子目录与文件，包括隐藏文件。
-A：显示指定目录下所有子目录与文件，包括隐藏文件。但不列出“.”和“..”.
-b：对文件名中的不可显示字符用把禁止
linux中所有设备都是以文件的形式显示
linux下文件的后缀名无实际意义
命令
pwd 显示路径
man +命令 列出操作说明
ls -l/-help列出 文件目录
cd / 目录做实验
安装步骤 configure make make install?
rm -r dl 递归删除目录
rm -rf 删除所有目录
rm -f 加文件名 删除文件
rmdir +文件地址 删除文件夹所有和rm -rf功能差不多
touch 加名字 创建新文件
cp 复制 mv 移动 rm 删除
vi 文本编辑器 输入a将从命令格式变成输入格式
head tail 查看前面和后面
find 加位置 加文件名 查找
echo $PATH 查询路径
useradd 加名字 添加用户
userdel 加名字 删除用户
su 加用户名 切换用户
chmod +x/-x 加文件名 修改文件权限
chmod 755 加文件名 改变权限在安装程序时
grep 加文本字符 加在那个文件 查找字符存在那行
fdisk -l 查看磁盘信息
命令1|命令2|命令三... 管道
ps -ef查看进程
ifconfig linux查看ip
重定向
linux和其它机器之间共享文件vsftp Windows和linux传输文件15-17
putty远程登录软件ssh
gzip 压缩和解压缩 -d解压 21
service iptables off防火墙关闭
tar -xvf 第二层解压缩
.tar
解包：tar xvf FileName.tar
打包：tar cvf FileName.tar DirName
（注：tar是打包，不是压缩！）
———————————————
.gz
解压1：gunzip FileName.gz
解压2：gzip -d FileName.gz
压缩：gzip FileName
.tar.gz 和 .tgz
解压：tar zxvf FileName.tar.gz ./DirName
压缩：tar zcvf FileName.tar.gz DirName
.tar.bz2
解压：tar xjf FileName.tar.bz2 ./DirName
压缩：tar cjf FileName.tar.bz2 DirName
rpm -ivh 加.rpm文件 安装
安装sudo apt-get install 软件名
