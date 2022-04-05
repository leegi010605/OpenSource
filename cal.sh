#!/bin/bash

num1=$(<num1.txt)
num2=$(<num2.txt)

if [ $# -le 0 ]; then
	echo "...none operator paraeter..."
	echo "1.add"
	echo "2.sub"
	echo "3.div"
	echo "4.mul"
	read -p "select menu : " temp
		case $temp in
		1)sum=$(("$num1" + "$num2"))
			parameter=add;;
		2)sum=$(("$num1" - "$num2"))
                       parameter=sub;;
	        3)sum=$(("$num1" / "$num2"))
                        parameter=div;;
		4)sum=$(("$num1" * "$num2"))
                        parameter=mul;;
	esac
	
	echo "num1 : $num1"
	echo "num2 : $num2"
	echo "op : $parameter"
	echo "result : $sum"
else 
	 case $1 in
		1)sum=$(("$num1" + "$num2"))
                        parameter=add;;
		2)sum=$(("$num1" - "$num2"))
                        parameter=sub;;
		3)sum=$(("$num1" / "$num2"))
                        parameter=div;;
		4)sum=$(("$num1" * "$num2"))
                        parameter=mul;;
        esac

        echo "num1 : $num1"
        echo "num2 : $num2"
        echo "op : $parameter"
        echo "result : $sum"
fi
exit


	
