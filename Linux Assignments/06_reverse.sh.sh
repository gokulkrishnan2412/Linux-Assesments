<<comments
Name:Gokula Krishnan
Date:2/3/2021
Description:To print a given number in reverse order
Input:./06_reverse.sh 12345
Output:Reversed Number-54321
comments


#!/bin/bash
if [ "$#" = 0 ] #Checking arguments passed or not
then
	echo "No arguments passed"
	exit1
fi
num=$1
rev=0
remainder=0

while [ $num -gt 0 ]
do
	remainder=$(( $num % 10 ))
	rev=$(( $rev * 10 + $remainder ))
	num=$(( $num / 10 ))
done
echo "Reversed number- $rev"
