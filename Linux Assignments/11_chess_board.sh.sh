<<comments
Name:Gokula Krishnan
Date:4/3/2021
Description:Bash script to print a chess board
Input:./11_chess_board.sh
Output:
comments

#!/bin/bash

clear      # clears the screen
row=2     # This indicates after how many lines the chess board should be displayed
col=25    # This indicates after how many cols the chess board should be displayed     

for (( i=1 ; i<=8; i++ ))
do

   for (( j=1 ;j<=2; j++ ))            # prints same line twice to increase height of the block
   do
      tput cup $row $col        # moves cursor to partcular ROW(here row) & COLUMN(here col)

     for (( k=1 ; k<=8; k++ ))
     do

        c=`expr $((i+k)) %  2`          # to determine whether it is odd or even block

        if [ $c -eq 0 ]
        then
             echo -e -n "\033[47m    "   # White background, no. of spaces indicates the width of the block
        else
             echo -e -n "\033[40m    "   # Black background, no. of spaces indicates the width of the block
        fi

      done
      let row=row+1

    done

done

echo -e "\033[0m"                         # Restores color settings
read key                                  # Waits for enter

