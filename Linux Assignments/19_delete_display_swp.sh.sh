<<Comment
Name 	   :    Gokula krishnan
Date	   :    8/3/2021
Description:    Write a script to find and delete all .swp file
Input: ./A19_delete_display_swp.sh
Output: select 1 to Display
  
Comment

#!/bin/bash

echo "Please select an options: "                                                # Displaying options to user
echo "1 To display .swp file"
echo "2 To delete .swp file"

read -p "Please enter your option: " op                                          # Input from user
case $op in                                                                      # Case statement to perform the task based on user input
	1) 
		echo "All the '.swp' files in your directory are listed below:"
		echo `find . -name "*.swp"`
		;;
	2)
		echo "All the '.swp' files are deleted"
		echo `find . -name "*.swp" -delete`
		;;
	*)
		echo "Pleas select a given option"
		;;
esac
