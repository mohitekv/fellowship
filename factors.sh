#!/bin/bash
echo Enter a Number:
read n
f=1
for ((i=2;i<=n;i++));
do 
	if [[ $(($n % $i)) -eq 0 ]]
	then
		f=0
		break
	fi
	((i++))
done
if [[ $f == 1 ]]
then
	echo  prime number
else
	echo not prime number
fi
