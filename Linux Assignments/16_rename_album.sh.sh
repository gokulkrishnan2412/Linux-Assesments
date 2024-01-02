<<comments
Name: Gokula Krishnan
Date: 09/03/2021
Description: To rename corresponding directory by inserting index numbers with respect to the given album name.
Input: ./16_rename_album.sh day_out
Output: All '*.jpg' files in current directory is renamed as
        day_out_001.jpg day_out_002.jpg day_out_003.jpg day_out_004.jpg day_out_005.jpg
comments

#!/bin/bash
if [ $# -eq 1 ] 									#To check for command line arguments
then
	for name in DSN*.jpg 								# Iterating through all .jpg file
	do
		new_name=$1"$(echo "$name" | cut -c4-)"  				# Assigning new name
		mv "$name" "$new_name" 						# Renaming

		echo "All '*.jpg' files in current directory is renamed as:"
		echo $new_name
	done
else
	echo Error: Please pass the prefix name through command line 		#Error statement
fi
