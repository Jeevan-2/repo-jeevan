#!/bin/bash

while read line
do
     sed -n '1!G;h;$p'

done <$1
