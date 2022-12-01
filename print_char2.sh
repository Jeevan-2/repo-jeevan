#!/bin/bash

echo "Enter the string"
read STR

echo "From which char we need to start sub string"
read START

echo "How many chars are needed for sub string"
read END

SUB_STR=${STR:$START:$END}
echo "$SUB_STR"

