<<Comments
Name:	       Gokula Krishnan
Date:		8/3/2021
Description:  Script to change the case (upper/lower) of files and folder
Usage:
       1) Create a separate directory to execute the script.
       2) Keep the script file inside the directory.
       3) Create few files using touch / vim command
       4) Create few directory using "mkdir" command
       5) execute the script to see the changes.

Comments

#!/bin/bash

arr=(`ls`)                                                                 # Colleacting the out put of `ls` into an array
echo "****Before running the script****"
echo ${arr[@]}                                                             # Displaying all the files and directories before changes done
echo "****After running the script****"
for item in ${arr[@]}                                                      # Loop to consider all the elements (files and folders)
do
	if [ -f $item ]                                                    # condition to filter files
	then
		rename=`echo $item | tr A-Z a-z`                           # changing upper case to lower case
		echo $rename
	elif [ -d $item ]
	then
		rename=`echo $item | tr a-z A-Z`                           # Changing lower case to upper case
		echo $rename
	fi
done
