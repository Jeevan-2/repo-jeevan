#!/bin/bash

COUNT=1


while read FILE
do
    WORDS=`echo $FILE | wc -w`
    CHARS=`echo $FILE | wc -c`

    echo "LineNo:$COUNT:Noofwords:$WORDS:Noofcharacters:$CHARS"

    COUNT=`expr $COUNT + 1`
done <$1
