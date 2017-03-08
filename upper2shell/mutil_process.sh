# /bin/sh

for ((i=0;i<5;i++)); do
{
    sleep 3s;
    echo "hello" $i
}
done
wait

#这个在上面的基础上多加了一个后台执行&符号，此时5个循环任务并发执行，最后需要3s多一点的时间（效果非常明显）。wait的作用是完成后台所有的任务后才往下执行，否则程序本身会等待。
for ((i=0;i<5;i++)); do
{
    sleep 3m;
    echo "hello" $i
}&
done
wait
