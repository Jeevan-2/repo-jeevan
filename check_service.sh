#!/bin/bash

echo "enter  the name of the service to check"
read NAME

VAR=$(ps -ef | grep -i $NAME | grep -v "grep" | wc -l)

if [[ "$VAR" -gt 0 ]];
then
	echo "Sevice $NAME is running"
else
	echo "Sevice $NAME is not running"
fi

