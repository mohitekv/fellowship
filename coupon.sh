#!/bin/bash
campare()
{
	arr[$2]=$1
	for ((i=0;i<=$2-1;i++))
	do
		if (($1 == ${arr[$i]}))
		then 
			echo element ${arr[$i]} was present in array at $i poistion
			break
		fi
	done
}

echo enter number how many random number u need
read n
j=0
for ((i=1;i<=n;i++))
do
	
	r=$((RANDOM%10+1))
	campare $r $j
	j=$(($j + 1))
	
done
echo random numbers are: ${arr[@]}
