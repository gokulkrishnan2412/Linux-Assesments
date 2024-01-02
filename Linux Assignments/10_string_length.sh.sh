<<comments
Name:Gokula Krishnan
Date:3/3/2021
Description:Script to print length of each and every  string using arrays.
Input:./10_string_length.sh hello hai how are you?
Output: Length of string(hello)-5
	Length of string(hai)-3
	Length of string(how)-3
	Length of string(are)-3
	Length of string(you)-3
	Length of string(?)-1
comments

#!/bin/bash
if [ $# -gt 0 ] #Checking arguments passed or not
then
	arr=( "$@" ) #Initializing array element

	for(( i=0; i<${#arr[@]}; i++ )) #Looping for iterating through array
	do
		words=${arr[$i]} #Getting a single word from the sentence
		length=${#words} #Length of particular word
		echo "Length of the string ($words) - $length"
	done
else
	echo "Please pass arguments through command line"
fi
