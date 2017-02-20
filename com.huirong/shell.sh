#/bin/sh
ls -l
#实现递归查询
ls -R
#?代表一个字符, ×代表多个字符
#递归复制
cp -R
#链接文件
#   符号链接 ln -s src dest
#   硬链接 ln src dest
#   file filename 查看文件类型
#   cat -n filename 查看文件时加上行号
#   more filename   查看文件
#   tail -n num filename    查看文件的最后num行
#   tail -nf num filename   查看文件的最后num行（文件的大小实时变动）
#   head -n num filename    查看文件的开头num行