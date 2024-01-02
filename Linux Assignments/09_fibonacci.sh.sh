<<comments
Name:Gokula Krishnan
Date:3/3/2021
Description:A script to read 'n' and  generate Fibonacci numbers<=n
Input:./09_fibonacci.sh
Enter limit for fbi series:10
Output:0,1,1,2,3,5,8
comments

#!/bin/bash

echo "Enter limit for fib series:"
read n   #Reading value from the user
if [ $n -gt 0 ]
then 
	n1=0 #Assigning first element of series to 0
	n2=1 #Assigning second element of series to 1
 
 	for (( i=0; i<n; i++ ))
 	do
 	echo "$z"
 	z=$(( n1 + n2 ))
 	n1=$n2
 	n2=$z
        done
else
echo " Please enter only positiove number"
fi
