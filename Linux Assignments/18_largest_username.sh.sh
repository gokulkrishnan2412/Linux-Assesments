<<Comment
Name 		: Gokula krishnan
Date		:8/3/2021
Description:    Write a script to display longest and shortest usernames on the system
Input:./A18_largest_username.sh
Output: Largest username is: speech-dispatcher
                           

#!/bin/bash



arr=(`cat /etc/passwd | cut -d ":" -f1`)  # To get all the usernames from /etc/passwd

length=${#arr[@]}
largest=${#arr[0]}
for i in `seq 1 $length`                  # loop to find the largest username
do
	if [ ${#arr[i]} -gt $largest ]
	then
		largest=${#arr[i]}
		string1=${arr[i]}
	fi
done
echo "Largest username is: $string1"
echo "Number of character: $largest"

arr=(`cat /etc/passwd | cut -d ":" -f1`)  # To get all the usernames from /etc/passwd
length=${#arr[@]}
shortest=${#arr[0]}
for i in `seq 1 $length`                  # loop to find the smallest username
do
	if [ ${#arr[i]} -lt $shortest ]
	then
		shortest=${#arr[i]}
		string2=${arr[i]}
	fi
done
echo "Shortest username is: $string2"
echo "Number of chracter: $shortest"
