#!/bin/bash
echo "Enter name range less than 3"
read str
s="Hello $str, How are you?"
echo $s
if [ ${#str} -ge 4 ];
	then
		echo "invalid output"
else

		#echo "hello"
		#s2=${s//$str/dfhjk}
		echo "Enter your name"
		read str2
		echo "${s//$str/$str2}"
fi


