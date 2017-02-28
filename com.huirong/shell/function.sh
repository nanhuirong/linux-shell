#!/bin/bash
#熟悉函数使用
function func {
    echo "this is an example!"
}

#返回的值在0-255之间
function func1 {
    read -p "enter a value" value
    echo "double the value"
    return $[ $value * 2 ]
}

count=1
while [ $count -le 5 ]
do
    func
    count=$[ ${count} + 1 ]
done

func1
echo "$?"

function func2 {
    read -p "enter a new value" value
    echo $[ value * 2 ]
}
result=$(func2)
echo $result

#给函数传递参数
function func3 {
    # $#参数数目
    if [ $# -eq 0 ] || [ $# -gt 2 ]
        then
            echo -1
    elif [ $# -eq 1 ]
        then
            echo $[ $1 + $1 ]
    else
        echo $[ $2 + $2 ]
    fi
}
result=$(func3 10 20 30)
echo $result

#局部变量 使用local 进行修饰
