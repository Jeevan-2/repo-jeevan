#!/bin/bash

echo "Enter the two numbers"
read $A $B

if [ $@ == 2 ];
then

     if [ $A -gt $B ];
     then
        echo "$A is bigger than $B"
     else
        echo "$B is bigger than $A"
     fi
else
	echo "Please pass only two arguments"
fi

