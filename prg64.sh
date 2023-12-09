#!/bin/bash
declare -a a
read -p "enter the size of an arrayi:" n
for ((i=0;i<n;i++))
do
  echo "enter the $i element:"
  read a[$i]
done
#print the array
echo "The given array is: ${a[@]}"
#End
