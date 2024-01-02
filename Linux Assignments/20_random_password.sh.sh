<<Comment         
Name of author: Gokula Krishnan
Date		:8/3/2021
Description:    Write a script to generate random 8-chracter passwords including alpha-numeric chracter
Input:          ./A20_random_password.sh       
Output:	nH@Rh0Pv    
          
                        
Comment

#!/bin/bash

for pw in `seq 1 10`                                          # Loop to execute the command 10 times
do
	pw=`cat /dev/urandom | tr -cd [:print:] | head -c 8`  # Generate 8 ch random password
	echo $pw                                              # Printing the password
done
