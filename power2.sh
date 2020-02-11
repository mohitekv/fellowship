#!/bin/bash
echo Enter the range
read n
echo 2^n values are:
for i in `seq $n`
do
    echo $((2**$i))
done