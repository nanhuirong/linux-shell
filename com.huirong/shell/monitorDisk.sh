#!/bin/bash
#监控磁盘使用
check_dirs=" /var/log /home"
time=`env LANG=en_US.UTF-8 date '+%m%d%Y'`
exec > disk_space_${time}.reporter

for check_dir in $check_dirs
do
    echo "the ${check_dir}:"
    du -h ${check_dir} 2>/dev/null |
    sort -rn |
    sed '{11,$D; =}' |
    sed 'N; s/\n/ /' |
    gawk '{printf $1 ":" "\t" $2 "\t" $3 "\n"}'
done
exit