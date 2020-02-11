#!/bin/bash
declare -A arr
echo enter number of elements:
read n
echo enter elements:
for ((i=1;i<=$n;i++))do
	read arr[$i]
done
#echo $((${arr[1]} + ${arr[2]}))
count=0
echo Tripltes are
#echo ${arr[@]}
for ((i=1;i<=$n;i++))do
	for ((j=$i+1;j<=$n;j++))do
		for ((k=$j+1;k<=$n;k++))do
			if [[ $((${arr[$i]} + ${arr[$j]} + ${arr[$k]})) -eq 0 ]]
			then
				echo ${arr[$i]} ${arr[$j]} ${arr[$k]}
				((count++))
			fi
			
		done
	done
done
echo Number of triplets are $count
