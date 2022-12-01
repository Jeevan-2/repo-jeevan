#!/bin/bash

STR="THISISFOREXAMPLE"

SUB_STR=${STR:$1:$2}

echo "$SUB_STR"


