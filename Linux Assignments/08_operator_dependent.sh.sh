<<comments
Name:Gokula Krishnan
Date:2/3/2021
Description:A script to perform arithmetic operation on digits of a given number depending upon the operator
Input:./08_operator_dependent.sh 1234+
Sum is 10
comments

#!/bin/bash
if [ $# -gt 0 ] #Checking Command line Arguments are passed or not
then
inp=$1 #Storing the argument ina avariable
operator='echo "$inp" | cut -c${#inp}' #Seperating the operator and storing it in a 						    variable operator.

	case $operator in #Switch case for different arithmetic operations
	+)
		sum='echo "$inp" | cut -c1' #Storing first value in Sum
		for(( i=2; i<${#inp}; i++ ))  #Looping from second digit to last digit
		do
			value='echo "$inp" | cut -c$i' #Storing the iterating values
			sum=$( echo "$sum+$value" | bc ) #Addition
		done
		echo "sum is $sum"
		;;
	-)
		sub='echo "$inp" | cut -c1'
		for(( i=2; i<${#inp}; i++ ))
		do 
			value='echo "$inp" | cut -c$i'
			sub=$( echo "$sub-$value" | bc ) #Subtraction 
		done
		echo "Sub is $sub"
		;;
	\*)
		mul='echo "$inp" | cut -c1'
		for(( i=2; i<${#inp}; i++ )) #iterating
		do
			value='echo "$inp" | cut -c$i'
			mul=$( echo "$mul*$value" | bc ) #Multiplication
		done
		echo "Mul is $mul"
		;;
	/)
		div='echo "$inp" | cut -c1'
		for(( i=2; i<${#inp}; i++ ))
		do
			values='echo "$inp" | cut -c$i'
			div=$( echo "scale=2; $div/$value" | bc ) #Division 
		done
		echo "Div is $div"
		;;
	*)
		echo "No operator"
		;;
	esac
else
	echo "Please pass arguments through command line." #If no argument is passed through command line
	echo "Usage : ./09_operator_dependent.sh 1234+"
fi

