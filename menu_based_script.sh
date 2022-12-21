#!/bin/bash

echo "Enter the number from menu"
echo "1) search word"
echo "2) check name file or dir"
echo "3) create softlink"
echo "4) find a file"
echo "5) find a file and delete if it is empty"
echo "6) rename a file"
echo "7) exit"

read VAR

DIR_PATH="/home/ec2-user/shell_scripts"

case $VAR in 
1) 
         echo "Enter a WORD to search"
         read WORD
	 find /home/ec2-user/ -name
	     ;;
2)
         echo "Enter a name to check file or dir"
         read NAME        
     
         if [ -f $NAME ];
         then
               echo "$NAME is a file"
         elif [ -d $NAME ];
         then
               echo "$NAME is a dir"
         else
               echo "$NAME is not a file or dir"
         fi
             ;;
3)
         echo "Enter the file path to create soft link"
         read SOFTLINK_PATH
	 echo "Enter softlink name"
	 read  softlink_name
         
         ln -s $SOFTLINK_PATH $softlink_name
             ;;
4)
         echo "Enter a filename which has to be find"
         read FILENAME1
         
         FETCH_FILE=`find $DIR_PATH -name $FILENAME1`
	 VALUE=`$FETCH_FILE | wc -l`
         
         if [ $VALUE -gt 0 ];
         then
                echo "$FETCH_FILE"
         else
                echo "$FILENAME1 is not present"
         fi
              ;;
5)
         
         find $DIR_PATH -type f -empty -delete
              ;;
6)
         echo "Enter a file name with path"
         read FN
         echo "Suggest the new_name for a file with path"
         read NN
         
         mv $FN $NN
               ;;
7)
         exit
               ;;
*)
         echo "Enter the number only from the menu"
               ;;
esac	       
