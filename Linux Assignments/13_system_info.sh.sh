<<comments
Name:Gokula krishnan
Date:01/03/2021
Description:Script to printy system information
Input:./13_system_info.sh Enter the choice: 2
Output:Your shell directory is /bin/bash
comments

#!/bin/bash

echo "1.Currently logged user" 			#System information required for user 
echo "2.Your shell sirectory"
echo "3.Home directory"
echo "4.OS name & version"
echo "5.Currently working directory"
echo "6.Number of users logged in"
echo "7.Show all available shells in your system"
echo "8.Hard disk information"
echo "9.CPU information"
echo "10.     Memory information."
echo "11.     File system information."
echo "12.     Currently running process."

echo "Enter the choice:"
#Getting system information from the user
read n	
case "$n" in
	1)echo "Currently logged user is $(who)"  				#Command to print current logged user
	;;
	2)echo "Your shell directory is $(SHELL)"				#Command to print shell directory
	;;
	3)echo "Home directory is $(HOME)"					#Command to print home directory
	;;
	4)echo "OS name & version is $(uname -v)"				#Command to print OS name and version
	;;
	5)echo "Current working directory is $(pwd)"				#CommaND to print current working directory
	;;
	6)echo "Number of users logged in is $(w)"				#Command to print number of users logged in
	;;
	7)echo "Show all available shells in your system $(cat /etc/shells)"	#Command to show all available shells in your system
	  ;;
	8)echo "Hard disk information is $(free -h)"				#Command to print harrd disk information
	;;
	9)echo "CPU Information is $(cat /proc/cpuinfo)"			#Command to print CPU Information
	;;
	10)echo "Memory information is $(cat /proc/meminfo)"			#Command to print Memory information
	;;
	11)echo "File system information is $(df)"				#Command to print file system information
	;;
	12)echo "Current running process is $(ps)"				#Command to print current running process
	;;
	13)echo "Error:No such option"					#Print error if more than no 12 is selected
	;;
esac
