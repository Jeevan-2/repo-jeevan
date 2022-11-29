#!/bin/bash

for i in $*
do 
	NUM=$i
	FACT=1
	while [ $NUM -gt 1 ]
	do 
		FACT=`expr $FACT \* $NUM`
		NUM=`expr $NUM - 1`
	done
	echo "Factorial of $i is $FACT"

i=`expr $i + 1`
done
