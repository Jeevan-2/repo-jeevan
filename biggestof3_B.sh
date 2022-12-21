#!/bin/bash
A=$1
B=$2
c=$3

if [ $A -gt $B ] && [ $A -gt $C ];
then
        echo "$A is bigger than $B & $C"
elif [ $B -gt $A ] && [ $B -gt $C ];
then
        echo "$B is bigger than $A & $C"
else
        echo "$C is bigger than $A & $B"
fi
