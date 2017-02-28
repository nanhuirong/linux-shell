#!/bin/bash
#熟悉sed命令, 用于编辑文本
#s 替换命令 /num1/num2/ num1被替换为num2 默认替换一行中出现的第一个
echo "this is a test" |
sed 's/test/big test/'
sed 's/dog/cat/' data

sed -e 's/brown/green/; s/dog/cat/' data

#替换第二处出现的内容
echo "this is a test of the test script" |
sed 's/test/trail/2'
#替换所有匹配到的内容
echo "this is a test of the test script" |
sed 's/test/trail/g'
#将替换的行输出
echo "将替换的行输出"
echo "this is a test of the test script" |
sed 's/test/trail/p'
#-n禁止sed输出
echo "this is a test of the test script" |
sed -n 's/test/trail/p'
#写入指定文件
echo "this is a test of the test script" |
sed 's/test/trail/w data1'

sed 's!/bin/bash!/bin/nanhuirong!' /etc/passwd

