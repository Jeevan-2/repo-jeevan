#!/bin/bash
echo "Enter a number to check factorial"
read NUM

VAR=$NUM
FACT=1

while [ $NUM -gt 0 ]
do
	FACT=`expr $FACT \* $NUM`
	NUM=`expr $NUM - 1`
done
echo "Factorial of $VAR is $FACT"
