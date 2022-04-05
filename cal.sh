#!/bin/bash

num1=$(<num1.txt)
num2=$(<num2.txt)

declare -a arr=("$num1" "$num2")

echo "project management in github"

if [ $# -le 0 ]; then
        echo "...none operator paraeter..."
        echo "1.add"
        echo "2.sub"
        echo "3.div"
        echo "4.mul"
        read -p "select menu : " temp
                case $temp in
                1)sum=$(("${arr[0]}" + "${arr[1]}"))
                        parameter=add;;
                2)sum=$(("${arr[0]}" - "${arr[1]}"))
                       parameter=sub;;
                3)sum=$(("${arr[0]}" / "${arr[1]}"))
                        parameter=div;;
                4)sum=$(("${arr[0]}" * "${arr[1]}"))
                        parameter=mul;;
        esac

        echo "num1 : ${arr[0]}"
        echo "num2 : ${arr[1]}"
        echo "op : $parameter"
        echo "result : $sum"
else
         case $1 in
                1)sum=$(("${arr[1]}" + "${arr[1]}"))
                        parameter=add;;
                2)sum=$(("${arr[0]}" - "${arr[1]}"))
                        parameter=sub;;
                3)sum=$(("${arr[0]}" / "${arr[1]}"))
                        parameter=div;;
                4)sum=$(("${arr[0]}" * "${arr[1]}"))
                        parameter=mul;;
        esac

        echo "num1 : ${arr[0]}"
        echo "num2 : ${arr[1]}"
        echo "op : $parameter"
        echo "result : $sum"
fi
exit

