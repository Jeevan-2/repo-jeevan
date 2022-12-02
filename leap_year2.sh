#!/bin/bash

echo "Enter the year to check"
read YEAR

if [[ $YEAR =~ ^[[:digit:]]+$ ]];
then
     Y=$(( $YEAR % 4 ))

     if [[ $Y -eq 0 ]];
     then
        echo "$YEAR is a leap year"
     else
        echo "$YEAR is not a leap year"
     fi

else
       echo "Please enter only number"	
fi
