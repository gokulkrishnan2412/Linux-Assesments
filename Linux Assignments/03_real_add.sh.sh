<<comments
Name:Gokula krishnan
Date:03/03/2021
Description:Addition of two  numbers and real numbers too.
Input:./03_real_add.sh
       Enter the numbers to addition 10.32
       20.45
Output:Answer is 30.77
comments

#!/bin/bash
echo "Enter numbers to addition"
#Getting values from the user
read a 
read b
#Adding the real values using bc.
sum=$( echo "$a+ $b" | bc ) 
#Printing the Sum
echo "Answer is $sum" 
