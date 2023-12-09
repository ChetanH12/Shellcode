#!/bin/bash

#Script to perform Arithmetic opertor
echo "Enter var1 and var2:"
read v1;read v2
opt=""
select opt in + - \* e
do
#echo "you selected $opt"
case $opt in
+) echo `echo $v1 + $v2|bc` ;;
-) echo `echo $v1 - $v2|bc` ;;
\*) echo `echo $v1 \* $v2|bc` ;;
e) break ;;
*) echo "$opt is valid operator"
esac
done

#end
