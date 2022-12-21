#!/bin/bash

echo "Enter the name to check"
read NAME

if [ -L $NAME ];
then
	echo "Given $NAME is link"
elif [ -f $NAME ];
then
	echo "Given $NAME is file"

elif [ -d $NAME ];
then
	echo "Given $NAME is dir"
else
	echo "Given $NAME doesnot exist"
fi

