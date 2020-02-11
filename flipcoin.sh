#!/bin/bash
echo "Enter number of times to flip the coin(number should be positivw)"
read n
min=0
max=1
j=0
k=0
for i in `seq $n`
do
	arr=$((min+RANDOM%(max-min))).$((RANDOM%999))
	if [[ $arr > 0.5 ]]
	then 
		echo head
		#he[j]=1
		((j++))
	elif [[ $arr < 0.5 ]]
	then	
		echo tail
		#ta[k]=$arr
		((k++))
	fi
done
echo number of times head occure $j
echo number of times tail occure $k
echo percentage of head is:
echo  $j / $n \* 100 | bc -l
echo percentage of tail is:
echo  $k / $n \* 100 | bc -l 
