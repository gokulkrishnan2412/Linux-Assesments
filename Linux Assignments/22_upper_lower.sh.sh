<<comments
Name       :Gokula Krishnan
Date       :10/3/2021
Description:Shell script to convert strins form upper case to lower case or 
	    viceversa.
Input      :./22_upper_lower.sh file.txt
Output	   : 1-Lower to upper
	     2-upper to lower
	     Please select option
	     WHAT IS OS?
	     WHAT ARE THE DIFFERENT OS?
	     WHEN IS OS USED?
comments

#!/bin/bash
file= {$@}
echo "1-Lower to upper"
echo "2-Upper to lower"
echo "Please select option"
read option
case "$option" in
	1)
	 echo $file | tr [:lower:] [:upper:] >> file
	 ;;
	2)
	echo $file | tr [:upper:] [:lower:] >> file
	;;
esac
