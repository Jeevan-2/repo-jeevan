#!/bin/bash
echo "Enter a string"
read var

copy=${var}

len=${#copy}
for((i=$len-1;i>=0;i--));
do
        rev="$rev${copy:$i:1}";
done

echo "var: $var, rev: $rev"


