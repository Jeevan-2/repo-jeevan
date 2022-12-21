#!/bin/bash

echo "Enter the 3 numbers"
read NUM1 NUM2 NUM3

SUM=`expr $NUM1 + $NUM2 + $NUM3`

echo "Sum of $NUM1,$NUM2,$NUM3 is $SUM"

