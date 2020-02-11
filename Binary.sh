#!/bin/bash
echo enter value decimal value:
read num
rem=1
i=0
while [ $num -gt 0 ]
do
	rem=$(($num % 2))
	b[$i]=$rem
	num=$(($num / 2))
	i=$(($i + 1))
done
len=${#b[@]}
j=0
for ((i = $len - 1; i >= 0; i--)) 
do
     bin[j]=${b[$i]}
	j=$((j + 1))
 done 
        echo Binary representation of $num is  ${bin[@]}

