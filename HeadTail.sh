#!/bin/bash
coin=$(($RANDOM%2))
if [[ $coin == 0 ]]
then
    echo tail
else
    echo head
fi
