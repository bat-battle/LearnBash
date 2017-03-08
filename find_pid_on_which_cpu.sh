#我有个 Linux 进程运行在多核处理器系统上。怎样才能找出哪个 CPU 内核正在运行该进程？
#方法一
#如果一个进程使用 taskset 命令明确的被固定（pinned）到 CPU 的特定内核上，你可以使用 taskset 命令找出被固定的 CPU 内核：
taskset -c -p <pid>
方法二
ps 命令可以告诉你每个进程/线程目前分配到的 （在“PSR”列）CPU ID。
ps -o pid,psr,comm -p <pid>
  PID PSR COMMAND
  1079   1 mysql
#如果该过程没有被固定，PSR 列会根据内核可能调度该进程到不同内核而改变显示。

#方法三
#top 命令也可以显示 CPU 被分配给哪个进程。首先，在top 命令中使用“P”选项。然后按“f”键，显示中会出现 “Last used CPU” 列。目前使用的 CPU 内核将出现在 “P”（或“PSR”）列下。

top -p 1079



