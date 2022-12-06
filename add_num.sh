#!/bin/bash

echo "enter two numbers"
read $1 $2

SUM=`expr $1 + $2`
echo "Sum of $1 & $2 is $SUM"
