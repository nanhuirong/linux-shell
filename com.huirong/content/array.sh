mytest=(one two three four)
echo $mytest
echo ${mytest[1]}
echo ${mytest[*]}
mytest[2]=seven
echo ${mytest[*]}