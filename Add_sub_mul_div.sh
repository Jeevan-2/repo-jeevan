#!/bin/bash

echo "Enter two numbers"
read A B

NUM1=`expr $A + $B`
NUM2=`expr $A \* $B`
NUM3=`expr $A - $B`
NUM4=`expr $A / $B`
NUM5=`expr $B - $A`
NUM6=`expr $B / $A`

if [ $A -gt $B ] || [ $B -gt $A ];
then
	echo "Addition of $A & $B is $NUM1"
	echo "Multiplication of $A & $B is $NUM2"

   	if [ $A -gt $B ];
     then
        echo "subtraction of $A & $B is $NUM3"
        echo "Division of $A & $B is $NUM4"
     else
	echo "subtraction of $B & $A is $NUM5"
        echo "Division of $B & $A is $NUM6"
      fi
 fi



