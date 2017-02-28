#!/bin/bash
#熟悉gawk命令
#gawk '{print "HelloWorld"}'
#   $0 整行文本(默认分隔符是任意空白字符)
#   $1  第一个字段
gawk '{print $0}' data
gawk '{print $1}' data
#指定分隔符
gawk -F: '{$1="shabi"; print $0}' /etc/passwd
#指定处理数据前运行脚本
gawk 'BEGIN {print "gawk start"}{print $0} END {print "gawk end"}' data

gawk 'BEGIN {
print "the latest list of users and shells"
print "userId \t shell"
print "------- \t -------"
FS=":"
} {
print $1 "              \t" $7
} END{
print "this concludes the lists"
}' /etc/passwd