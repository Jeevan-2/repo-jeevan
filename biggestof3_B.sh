#!/bin/bash

if [ $# -ne 3 ];
then
     echo "Pass only 3 arguments"
     exit
fi

if [ $1 -gt $2 ] && [ $1 -gt $3 ];
then
        echo "$1 is bigger than $2 & $3"
elif [ $2 -gt $1 ] && [ $2 -gt $3 ];
then
        echo "$2 is bigger than $1 & $3"
else
        echo "$3 is bigger than $1 & $2"
fi
