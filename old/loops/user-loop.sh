#!bin/bash 
read -p "enter the value: " num 
if [ $num -eq 0 ]; then
	echo "done"
else
	for count in {1..100}
	do
		echo "$count"
	done
fi
