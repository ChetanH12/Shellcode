#!/bin/bash
if [ $# -eq 1 ]
then
  fname=$1
else
   read -p "provide the file name(absolute path):" fname
fi
if [ -e $fname -a -f $fname ]
then
exec < $fname
count=0
while read myvar
do 
  echo $myvar
  ((count++))
done
 echo "there are $count lines"
else
  echo "Cant read the file $fname. The file $fname is invalid"
fi
#end
