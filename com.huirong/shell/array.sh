#!/bin/bash
#熟悉数组的使用
function arrayTest {
    local array=$@
    local sum=0
    for value in ${array[*]}
    do
        sum=$[ $sum + $value ]
    done
    echo ${array[*]}
}

array=(1 2 3 4 5)
echo "the origin parameter ${array[*]}"
newArray=$(arrayTest ${array[*]})
echo ${newArray[*]}
echo "------------------------------------"
echo "练习函数递归"
function factorial {
    if [ $1 -eq 1 ]
    then
        echo 1
    else
        local temp=$[ $1 - 1 ]
        local result=$(factorial $temp)
        echo $[ $result * $1 ]
    fi
}
read -p "enter a value: " value
result=$(factorial $value)
echo $result