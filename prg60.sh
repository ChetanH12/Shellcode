#!/bin/bash
#Create users listed in names.txt
pass=Welcome@01
count=0
exec < names.txt
while read user
do
  useradd -c "user idfor $user -Created by created by script" $user >/dev/null
  echo "$user:$pass"|chpasswd>/dev/null
  chage -d0 $user>/dev/null
  ((count++))
done
  echo "Total $count records processed"
#end
