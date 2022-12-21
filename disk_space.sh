#!/bin/bash

DISK_SPACE=` df -h . | awk -F " " '{print $(NF-1)}' | sed 's/%/ /g' | tail -1`

if [ $DISK_SPACE -ge 90 ];
then
	echo "Disk space is full" | mailx -s "Warning disk space is full" -c "xyz@company.com" "abc@company.com"

fi
