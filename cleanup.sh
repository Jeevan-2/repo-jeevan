#!/bin/bash

DIR_PATH="/home/ec2-user/dir1"

TOTAL=`ls ${DIR_PATH} | wc -l`
DEL=`expr $TOTAL - 20` #only 20 files are required

if [ $DEL -gt 0 ];
then
	cd $DIR_PATH
	ls -rt | head -${DEL} | xargs rm     #ls -rt gives recent files at bottom
        echo "number of files"
	ls | wc -l
fi
