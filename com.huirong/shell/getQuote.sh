#!/bin/bash
#获取每日格言
#将日志保存在qotd.log中
#wget -q 关闭所有输出
#     --spider 查看链接的有效性
#wget -o qotd.log -O daily_quote.html $url



#url=$1
url=http://www.quotationspage.com/qotd.html
#检查url是否正常
check_url=`wget -nv --spider $url 2>&1`
bad_url=`echo ${check_url/*error404*/error404}`

if [ "$bad_url" = "error404" ]
then
    echo "bad web address"
    echo "$url invalid"
    echo "exiting script..."
fi

if [[ $check_url == *error* ]]
then
    echo "bad web address"
    echo "$url invalid"
    echo "exiting script..."
fi
#获取web页面数据
wget -o /tmp/quote.log -O /tmp/quote.html $url
#提取数据内容
sed 's/<[^>]*//g' /tmp/quote.html |
grep "`env LANG=en_US.UTF-8 date +%B' '%-d,' '%Y`" -A2
| sed 's/>//g'
| sed '/&nbsp;/{n ; d}'
| gawk 'BEGIN{FS="&nbsp;"} {print $1}'
| tee /tmp/daily_quote.txt > /dev/null

