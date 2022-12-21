#!/bin/bash

YEAR=$1

Y=$(( $YEAR % 4 ))

if [[ $Y -eq 0 ]];
then
	echo "$YEAR is a leap year"
else
	echo "$YEAR is not a leap year"
fi

