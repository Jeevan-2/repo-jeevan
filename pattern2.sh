#!/bin/bash

echo "Enter the pattern"
read pattern

result=$(grep "pattern" *)

if [ -n "$result" ];
then
        echo "List of file names having entered pattern"
        grep -l $pattern *

fi
	if [ $? -gt 0 ];
	then
		echo "$pattern is present in file"
	else
		echo "$pattern is not present in file"
        fi


