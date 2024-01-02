<<Comment
Name: 		Gokula Krishnan
Date:		8/3/2021
Description:    Write a script to print n lines from given lines 
Input: 	./A17_print_lines.sh 5 3 file.txt
Output: 	line 5
                line 6
                 line 7
Comment

#!/bin/bash

if [ $# -ge 3 ]                                          	# prompt user to pass the argument
then
	echo  `tail -n +$1 $3 | head -$2 `          	        # command to extract given no of lines
	echo  '-n'
	
else
	echo "Error: Please pass the arguments"          	# Error statement if no argument is passed
	echo "Usage: ./A17_print_line.sh 5 3 file.txt"	 # Usage statement
fi
