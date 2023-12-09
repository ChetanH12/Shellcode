#!/bin/bash
#setting a password for the user
echo -n "Enter you login name:"
read name 
echo "hi..$name enter your password:"
read -s p1
check=0
if [ -z $p1 ]
then
# echo "password is empty"
 check=1
fi
echo "re-type your password:"
read -s p2
if [ -z $p2 ]
then 
# echo "password is empty"
 check=1
fi
if [ "$p1" = "$p2" ] && [ $check -eq 0 ]
then 
 echo
 echo "I $name your both password matches"
 #echo "you entered $p1"
 echo $p1|passwd --stdin $name 
else 
 echo "sorry $name your password are not matched.. or your password is empty"
fi
