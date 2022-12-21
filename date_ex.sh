#!/bin/bash

FILE_PATH="/home/ec2-user/linux-commands"
DAY=`date +%a | tr '[a-z]' '[A-Z]'`
TODAY=`date '+%Y%m%d'`

case $DAY in
	MON)
		echo "Taking backup of access & error log files"
		cp $FILE_PATH/access_log $FILE_PATH/access_log-${TODAY}
	       cp $FILE_PATH/error_log $FILE_PATH/error_log-${TODAY}
	       ;;
       TUE|WED)
	        echo "Copying access & error log files /tmp"
                cp $FILE_PATH/access_log /temp/access_log-${TODAY}
               cp $FILE_PATH/error_log /temp/error_log-${TODAY}
	       ;;
       THU|FRI)
	        echo "Renaming access & error log files"
                mv $FILE_PATH/access_log $FILE_PATH/access_log-${TODAY}
               mv $FILE_PATH/error_log $FILE_PATH/error_log-${TODAY}
	       ;;    
	SAT|SUN)
	        echo "deleting the log files"
		cd $FILE_PATH
		rm *log
		;;
	*)   
		echo "Invalid option"
		;;
	esac
