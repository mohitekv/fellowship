#!/bin/bash
echo distance points x and y
read x
read y
#echo $((2**0.5))
c=$((($x * $x) + ($y * $y)))
d=$(echo "sqrt($c)" | bc -l)
echo distance from $x and $y is $d
