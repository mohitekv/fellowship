#!/bin/bash
source Binary.sh
for ((i=0;i<$len/2;i++))
do 
	c[$i]=${bin[$i]}
done
j=0
for ((i=($len/2);i<$len;i++))
do 
	d[$j]=${bin[$i]}
	j=$(($j +1))
done
bin=("${d[@]}" "${c[@]}")
echo After shifting two nibbles: ${bin[@]}
i=1
num=0
j=0
for ((i=$len-1;i>=0;i--))
do
	num=$(($num + ${bin[$i]} * ((2**$j))))
	j=$(($j + 1))

done
echo Decimal converstion of ${bin[@]} is: $num
