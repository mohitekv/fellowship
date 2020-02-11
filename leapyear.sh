#!/bin/bash
echo Enter a year
read y
if [[ $y > 1000 ]]
then 
	if [ $(($y % 4)) -ne 0 ]
	then 
		if [ $(($y % 100)) -eq 0 ]
		then
			if [ $(($y % 400)) -eq 0 ]
			then
				echo Leap Year
			else
				echo Not a leap Year
			fi 
		else
				echo Not a leap Year
			fi 
	else
		echo  leap year
	fi
fi
