#!/bin/bash
#2021114017 이준섭

mkdir temp
echo "...create temp directory..."

cp num1.txt temp
cp num2.txt temp
cp cal.sh temp

echo "...copy files to temp directory..."

echo "1.add"
echo "2.sub"
echo "3.div"
echo "4.mul"

read -p "select menu : " ch

if [ "$ch" -eq 1 ]; then
	parameter="add"
elif [ "$ch" -eq 2 ]; then
	parameter="sub"
elif [ "$ch" -eq 3 ]; then
        parameter="div"
elif [ "$ch" -eq 4 ]; then
        parameter="mul"
fi

echo "...$parameter selected..."
echo "...run calculater..."

chmod +x cal.sh
./cal.sh $ch

