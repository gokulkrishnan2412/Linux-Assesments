<<comments
Name:Gokula Krishnan
Date:4/3/2021
Description:Bash script to sort a given number in ascending or descending order.
Input:./12_sorting.sh -a 5 4 6 2 3 8 9 7 1 
Output:Ascending order of array is 1 2 3 4 5 6 7 8 9
comments


#!/bin/bash
if [ $# -ge 3 ]
then

arr={$@}		 			 #Saving array elements to arr 
len=$(( ${#arr[0]}-1 ))  			 #Finding length 
op= ${arr[0]}
case $op in
					 #Condition to find ascending or descending order
	-a)
	
	for i in 'seq 1 $len' 
	do
    	for j in 'seq $((i+1)) $len' 
    	do
      	if [ ${arr[$i]} -gt ${arr[$j]} ] 
        then
            									# swapping for ascending order
            temp=${arr[$i]} 
            arr[$i]=${arr[$j]}   
            arr[$j]=$temp 
        fi
	done
	echo "Ascending order of array is"
	echo -n ${arr[$i]} " "
	done
	echo
	;;
	
	-d)
										#Condition true if -d is passed as arguments
	for 1 in 'seq 1 $len'							#Performing descending order operation
	do
      	for j in 'seq $((i+1)) $len'
    	do
      	if [ ${arr[$i]} -lt ${arr[$j]} ] 
        then									#Swapping for Descending order
            # swapping for descending order
            temp=${arr[$i]} 
            arr[$i]=${arr[$j]}   
            arr[$j]=$temp 
        fi
    	done
	echo "Descending order of array is "
	echo -n ${arr[$i]} " "
	done
	echo
	;;
	
	*)
	echo "Please pass the choice"
	echo "Usage:-a/-d 4 23 5 6 7" 
esac
else
	echo "Please pass arguments through command line."
	
fi
	
	


