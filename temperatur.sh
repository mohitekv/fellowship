#!/bin/bash
convertFah()
{
	 
	cs=$(echo "(($1 - 32) * 5) / 9" | bc -l)
	echo $cs cal
}

convertCel()
{
	fh=$(echo "((($1 * 9) / 5) + 32" | bc -l)
}
echo give the temperature in fahrenheit
read fah
convertFah $fah
echo give the temperature in Celsius
read cel
convertCel $cel

