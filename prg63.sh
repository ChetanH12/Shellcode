#!/bin/bash

declare -a a
a=(prudvi issac sarath arif sreenivasan)
#print array values
#print the first value
echo "the first value of the array:"
echo ${a[0]}
echo "the fifth value of the array:"
#echo the fifth value
echo ${a[4]}
#to print al the values
echo ${a[@]}
#echo ${a[*]} #same as above line
#print number of values in the array
echo "the number of values in the array is:"
echo ${#a[@]}
