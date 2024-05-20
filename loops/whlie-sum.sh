#!bin/bash
count=1
sum=0
while [ $count -le 100 ]; 
do
	sum=$((sum + count))
	count=$((count+1))
done
echo "$sum"
