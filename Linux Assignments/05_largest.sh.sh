<<comments
Name:Gokula Krishnan
Date:2/3/2021
Description:To compare larger integer values form a 'n' number of arguments using command line arguments
Input:./05_largest.sh 5 6 8 4 2 1
Output: Largest value is 8
comments

#!/bin/bash
if [ "$#" = 0 ] #Checking if arguments passed or not
then
	echo "No arguments passed"
	exit 1
fi
maxEle=$1  #Initializing max with first argument
for arg in "$@" #loop compares max with passed arguments 
do
	if [ "$arg" -gt "$maxEle" ]
	then
		maxEle=$arg
	fi
done
echo "Leargest value is $maxEle" #Printing the largest value
