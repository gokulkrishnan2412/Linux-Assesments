<<comments
Name:Gokula Krishnan
Date:2/3/2021
Description:Script to delete empty lines from a file using command line argument.
Input:./07_delete_empty_lines.sh file.txt
Output:Empty lines are deleted.
comments

#!/bin/bash
if [ $# -gt 0 ]
then
sed -i '/^$/d' $1
echo "Empty lines are deleted."
else
echo "Error: Please pass the file name through command line."
fi
