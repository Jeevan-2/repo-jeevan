#!/bin/bash

sed '1d' $1 >file
while read line
do 
    age=`echo $line | cut -d ":" -f3`
	
	if [ $age -gt 30 ];
	then
		name=`echo $line | cut -d ":" -f1`
		#empid=`echo $line | cut -d ":" -f2`
		#echo "$name:$empid"
	         echo "$name"
        fi
done <file
