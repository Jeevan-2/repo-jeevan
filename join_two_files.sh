#!/bin/bash

echo "Enter a filename1"
read filename1

echo "Enter a filename2"
read filename2

i=1
cat $filename1 | while read line
do
	echo "$line"
        cat $filename2 | while read l
        do
	    echo "$l"
	done
done
