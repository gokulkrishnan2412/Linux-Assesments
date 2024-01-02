<<comments
Name:Gokula krishnan
Date:01/03/2021
Description:Arithmetic calculator using command line arguments
Input:./04_arithmetic_calc.sh 25 + 41
Output:67
comments

#!/bin/bash
if [ $# -gt 0 ] #Checking Command line Arguments are passed or not
then
	case $2 in #Switch case for arithmetic operations
	#Arithmetic operations
	+)
		echo $1+$3 |bc
		;;
	-)
		echo $1-$3 |bc
		;;
	x)
		echo $1*$3 |bc
		;;
	/)
		echo $1/$3 |bc
		;;
	*)
		#Error case if 3 arguments are not passed
		echo "Please pass 3 arguments" 
		#Telling the user how to pass arguments"
		echo "Usage of arguments:Example : 1 <space> + <space> 2 " 
	esac
else
	echo "Please pass arguments through command line." #Error case if no argument is passed
fi

