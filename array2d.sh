#!/bin/bash
declare -A matrix
r=2
c=2
for ((i=1;i<=r;i++)) do
    for ((j=1;j<=c;j++)) do
	read v
        matrix[$i,$j]=$v
    done
done

echo
for ((i=1;i<=r;i++))
do
	for ((j=1;j<=c;j++))do
		echo -n ${matrix[$i,$j]}	
	done
done

