#!/bin/bash

echo "Enter the name to check file or dir"
read name

if [ -f $name ];
then 
	echo "$name is file"
	echo -e "\ncontents of the file"
	cat $name
	echo -e "\nNumber of lines of file"
	wc -l $name

elif [ -d $name ];
then
	echo "$name is dir"
	ls -lrt $name | egrep "^d"
	
else
	echo "Entered name not exists"
fi
