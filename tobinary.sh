#!/bin/bash
source Binary.sh
bin2=(0 0 0 0 0 0 0 0)
echo ${bin2[@]}
j=0
arr=$((8-$len))
for ((i=$arr;i<=8;i++))
do
	bin2[$i]=${bin[$j]}
	j=$(($j + 1))
done
echo binary representaion is: ${bin2[@]}
len=${#bin2[@]}
echo $len
for ((i=0;i<4;i++))
do 
	c[$i]=${bin2[$i]}
done
echo ${c[@]}
j=0
for ((i=4;i<8;i++))
do 
	d[$j]=${bin2[$i]}
	j=$(($j +1))
done
echo ${d[@]}
bin2=("${d[@]}" "${c[@]}")
echo After swap two nibbles: ${bin2[@]}
i=1
num=0
j=0
for ((i=7;i>=0;i--))
do
	num=$(($num + ${bin2[$i]} * ((2**$j))))
	j=$(($j + 1))

done
echo Decimal converstion of ${bin2[@]} is: $num
