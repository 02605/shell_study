#!/bin/bash

user=$( cat /etc/passwd | grep "/bin/bash" | egrep -v "(root|rx)" | cut -d ":" -f 1 )

for each_user in $user
do
	sudo userdel -r $each_user
done
