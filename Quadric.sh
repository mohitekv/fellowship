 #!/bin/bash
echo  enter teh values of a,b,y
read a
read b
read c
echo Quadratic eqyation is $a XX+ $b X+ $c.

d=$((($b * $b) - (4 * $a * $c)))
echo $d
y1=$((2 * $a))
#echo $(((-$b+$y)/$y))
#echo "$(((-0.50+5)/2))"
 #"$(1.2/3" | bc -l)
