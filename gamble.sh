#!/bin/bash
stack=1
echo Enter the goals
read goals
echo Enter number of attempt
read no

for ((i=0;i<$no;i++))
do
	num=$((RANDOM%100+1))
	echo
	echo Enter you bet
	read bet 
	win=0
	lose=0
	echo $num
	if [ $num -gt 50 ]
	then 
			stack=$(($bet + $stack))
			echo Stack is now $stack
			if (( $stack > $goals ))
			then	
				echo you reaches the goal.
				win=$(($win + 1))
				break
			fi
	else 
		stack=$(($bet - $stack))
		echo Stack is now $stack
		if (( $stack < 0 ))
		then
			lose=$(($lose + 1))
			echo you are below your stack
			break
		fi
	fi
done
echo
echo
echo number of wins are $win
echo number of lose are $lose