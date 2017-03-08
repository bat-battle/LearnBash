# /bin/sh

#在 Linux 系统中，与用户管理有关的文件主要有如下几个：分别是/etc/passwd，/etc/shadow，
#/etc/gfoup，/etc/gshadow 。它们分别与用户的账号，密码，用户组及用户组密码有关。
#我们创建用户也就是跟这几个文件打交道。

#创建用户需要root权限，切换到root。
sudo su root

useradd testuser1

#set passwd for testuser1

passwd testuser1

#如果想同时在home目录（默认的）创建用户目录，需要用到 -m参数
useradd -m testuser2
passwd testuser2

#check it
ls -al /home/

#创建user还有其他一些参数，如：-u ,-g,-G,-m, -M,-c, -d,-r,-s. 去试着使用。
#在 linux 中使用 useradd 去新增用户时，一些在 /etc/passwd 中的值是会去参考 /etc/default/useradd 这个文件，请自行参考。


#next
#修改用户的设置
#1. 修改密码(用passwd) 2.修改用户的登录shell 3.修改用户所属的默认组 4.设置帐号有效期 5.修改用户的说明信息等等 6.修改用户主目录.

#1. passwd 用户名 【回车输入密码就可以了】
#2. 修改用户的登录shell
#使用chsh命令可以修改自己的shell，只有超级用户才能用chsh username为其它用户修改shell设置。
#注意，指定的shell必须是列入/etc/shells文件中的shell，否则该用户将不能登陆。

#一般，比较常见的shells文件包括下面这些shell：

#/bin/bash2 
#/bin/bash 
#/bin/sh 
#/bin/dash 
#/bin/bsh 
#/bin/csh 

#也可以使用usermod命令修改shell信息：
usermod -s /bin/bash testuser1

#其中/bin/bash和testuser1应取相应的shell路径文件名及用户名。

#3. 修改用户所属的默认组
#这个功能也可以通过usermod命令来实现，使用-g参数，例如把testuser1的默认组改为root，可以使用如下命令：
usermod -g root testuser1 
#注意:nobody在类UNIX系统中一般都意味着没有任何权限。
#4.设置帐号有效期
#如果使用了影子口令，则可以使用如下命令来修改一个帐号的有效期：
usermod -e MM/DD/YY username 

#例如把用户testuser1的有效期定为2013年12月31日：

usermod -e 12/31/13 testuser1 

#注意: 如果把该用户的有效期设为已经过去的时间，就可以暂时禁止该用户登录系统。

#5. 修改用户的说明信息

#修改用户的说明信息，最简单的方法莫过于直接修改/etc/passwd文件，找到对应的用户记录行，例如下列行：

testuser1:x:1002:1002::/home/testuser1:/bin/sh 

#你可以直接在第四个冒号和第五个冒号之间插入该用户的说明就可以了。其实，很多用户设置都可以在这修改，比如该行最后一部分/bin/bash就是用户登录shell的设置。

#6. 修改用户主目录

#修改用户的主目录主要使用usermod命令的-d参数，例如：

usermod -d /main testuser1 

#这一行将testuser1的主目录改到/main。
#如果想将现有主目录的主要内容转移到新的目录，应该使用-m开关，如下所示：

usermod -d -m /main testuser1 

#5. 删除用户账号
userdel testuser1


#######################扩展知识#########################

#1. /etc/passwd文件说明
##
# User Database
# 
# Note that this file is consulted directly only when the system is running
# in single-user mode.  At other times this information is provided by
# Open Directory.
#
# See the opendirectoryd(8) man page for additional information about
# Open Directory.
##
#nobody:*:-2:-2:Unprivileged User:/var/empty:/usr/bin/false
#root:*:0:0:System Administrator:/var/root:/bin/sh
#daemon:*:1:1:System Services:/var/root:/usr/bin/false
#_uucp:*:4:4:Unix to Unix Copy Protocol:/var/spool/uucp:/usr/sbin/uucico
#_taskgated:*:13:13:Task Gate Daemon:/var/empty:/usr/bin/false
#在passwd的文件里，每一行被冒号(":")分成7个部分，分别是：
#[用户名]：[密码]：[UID]：[GID]：[身份描述]：[主目录]：[登录shell] 
#其中：

#⒈[用户名]是passwd文件里各记录行唯一的有"唯一性"要求的域。也就是说每一行的第一个区域的内容都不能相同，其它区域就无所谓了。

#⒉[密码]区域在以前，保存着一个经过不可逆的哈希算法进行DES加密的13位字符，但不包括单引号和冒号。
#这13位字符中，前两位是密钥，在加密的时候随机生成的。由于这个字符串不包括单引号，
#所以以前有一种不修改密码又禁止用户登录的方式就是在密码前面加一个单引号。值得注意的是，
#现在由于使用了 shadow口令，在密码区域只有一个x字符。 

#⒊[UID]虽然是系统用来标志文件归属，确定各种权限的标志，但这个区域的内容并不要求唯一的。
#比较常见而又与安全问题相关的一个例子是有多个 UID和GID均为0的用户帐号。注意到在该文件最后一行
#还有一个UID和GID为0的用户imnotroot，虽然它声称自己不是root，但是它却有 和root完全相同的权限，
#因为系统并非根据[用户名]，而是根据UID和GID来分用户的权力的。所以，这种情况无疑为系统埋
#下了安全的炸弹。但是，当 imnorroot做锁定屏幕等操作的时候，如果它的密码和root的不一样，
#它将无法解锁，因为系统只是查到第一个UID为0的用户(自然是root) 后，就不在往下查找了——它当UID也是唯一的。

#⒋[GID]用户默认的组ID，这个ID可以在文件/etc/group里查到对应的组名。

#⒌[身份描述]：就是用户的身份说明，默认的是无任何说明，可人工添加。

#⒍[主目录]：用户的主目录，可以使用前面介绍的命令修改。

#⒎[登录shell]：用户登录时系统提供的shell

#<注意>：[UID]和[GID]小于500的一般都是系统自己保留，不做普通用户和组的标识的，所以新增加的用户和组一般都是UID和GID大于500的。

2. /etc/group文件说明
##
# Group Database
# 
# Note that this file is consulted directly only when the system is running
# in single-user mode.  At other times this information is provided by
# Open Directory.
#
# See the opendirectoryd(8) man page for additional information about
# Open Directory.
##
#nobody:*:-2:
#nogroup:*:-1:
#wheel:*:0:root
#daemon:*:1:root
#kmem:*:2:root
#sys:*:3:root
#tty:*:4:root
#operator:*:5:root
#mail:*:6:_teamsserver

#它总共分四个部分：

#[组名]：[密码域]：[GID]：[组员列表] 


#新组的增加可以使用groupadd newgroupname  

#1. 由于组一般都不用密码保护，所以虽然看起来密码域有个X字符，其实那只表示使用了SHADOW。
#2. 组员列表用逗号分隔各个帐号3. 一个组的组员如果默认登录组就是它的话，那么在组员列表里将不显示这个组员的帐号，例如用如下命令 增加的用户：
useradd -g wheel testuser2  
#在/etc/group文件里wheel的组员列表将不显示这个组员，而只是在passwd文件中的GID被设置为1002。而使用如下命令：
usermod -G wheel,daemon testuser2  
cat /etc/group  
#nobody:*:-2:
#nogroup:*:-1:
#wheel:*:0:root,testuser2
#daemon:*:1:root,testuser2
#kmem:*:2:root
#sys:*:3:root
#tty:*:4:root
#operator:*:5:root
#mail:*:6:_teamsserver

#就可以看见相关的组后边加上了testuser2帐号。
