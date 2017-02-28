#!/bin/bash
#像指定用户发送指定消息

#检测用户是否登录, grep -i忽略大小写
log_in=`who | grep -i -m 1 $1 | gawk '{print $1}'`
#判断log_in是否为空
if [ -z ${log_in} ]
then
    echo "$1 is not log in..."
    echo "Exiting script..."
    exit
fi
#判断用户是否接受消息
allowed=`who -T | grep -i -m 1 $1 | gawk '{print $2}'`
if [ ${allowed} != "+" ]
then
    echo "$1 does not allowing message."
    echo "Exiting script..."
fi
#检查是否包含要发送的消息
if [ -z $2 ]
then
    echo "No message parameter included!"
    echo "Exiting script..."
fi


uterminal=`who | grep -i -m 1 $1 | gawk '{print $2}'`
#shift 命令左移
shift
while [ -n "$1" ]
do
    message=$message' '$1
    shift
done

#发送消息给指定用户
echo $message | write $log_in $uterminal

