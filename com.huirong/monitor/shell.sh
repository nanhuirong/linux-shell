#查看所有进程以及一些详细信息
ps -ef
#显示进程见的关系
ps -forest
#实时显示进程详情
#输入f选择排序的字段
#d修改轮询时间
top

#杀死进程
kill PID

#挂载存储介质
mount

#查看磁盘空间
df -h

#查看当前目录下的文件和目录的磁盘使用情况
du -h
#查看path被占用的进程
lsof path

#排序 按字符排序
sort fileName
#将数字按数字排序
sort -n fileName
#按月排序 三个字母的月份
    -t  指定分割字符
    -k  指定排序字段
    -r  逆序

#搜索文件
grep [option] pattern fileName
    -v  输出不匹配该模式的行
    -n  显示行号
    -c  匹配多少行
    -e  指定一个需要匹配的模式


#压缩数据
工具  后缀
bzip2   .bz2
compress    .Z
gzip    .gz
    gzip    压缩文件
    zcat   查看压缩文件
    gunzip  解压
zip     .zip


tar -cvf    src dest    生成.tar
tar -xvf    解压