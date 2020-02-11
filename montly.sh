#!/bin/bash
echo enter value of principal loan precentage intrest and year
read p
read R
read Y

n=$((12 * $Y))
r=$(($R / (12 * 100)))
d=$(echo "1- (1 /((1 + $r)**$n))" | bc -l)
echo jh $d
pay=$(echo "($P * $r)/ $d" |bc -l)
echo payment is: $pay

