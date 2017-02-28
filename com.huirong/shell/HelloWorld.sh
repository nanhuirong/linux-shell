#!/bin/bash
date
who
days=10
guest="nanhuirong"
echo "${guest} checked in ${days} days ago"
time=`date`
echo "time=${time}"
#> 覆写文件 >> 追加写文件
#< 使用文件进行重定向
#wc 显示(行数, 词数, 字节数)
wc < ./HelloWorld.sh
#<< 无需使用文件进行重定向

#管道 commond1|commond2 第一个命令产生的输出会被传送到第二个命令
#cat HelloWorld.sh | sort

var=$[1+2]
echo ${var}


