#!/bin/bash

declare -a even_list=()
declare -a odd_list=()

for i in {1..100} 
do
	if [ `expr $i % 2` == 0 ];
	then
		even_list+=($i)
        else
		odd_list+=($i)
	fi

done
        echo "list of even numbers:${even_list[@]}"
	 echo "list of odd numbers:${odd_list[@]}"

         echo "#########################"
          echo "25th even number:${even_list[24]}"
         echo "25th odd number:${odd_list[24]}"

