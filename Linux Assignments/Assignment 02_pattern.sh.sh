c=1
echo "Enter a number of rows"
read n
for ((i=1 ;i<=n ;i++))
do 
for ((j=1 ;j<=i ; j++))
do 
echo  -n "$c"
c=$((c+1))
done
printf "\n"
done
