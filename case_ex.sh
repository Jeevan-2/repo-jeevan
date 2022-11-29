#!/bin/bash

echo "Enter a number"
read VAR

case $VAR in
	1) 
		echo "one"
		;;
	2)
		echo "Two"
		;;
	3)
		echo "three"
		;;
	*)
		echo "Neither 1 2 or 3"
		;;
esac
	
