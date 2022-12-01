#!/bin/bash

first=$1
second=$2

if [ $# -ne 2 ];
then 
	echo "Enter only two numbers"

elif [ $first -eq $second ];
then
	echo "$first is equal to $second"

elif [ $first -gt $second ];
then
	echo "$first is bigger than $second"

else
        echo "$second is bigger than $first"
fi
     
