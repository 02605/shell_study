#!/bin/bash

read -t 10 -p "input user name tag: " name
read -t 10 -p "input number: " num
read -t 10 -p "input passwd: " pass

if [ -n "$name" -a -n "$num" -a -n "$pass"  ]
then
	num_=$(echo $num | sed 's#[0-9]##g')
	if [ -z "$num_" ]
	then
		for (( i=1;i<=$num;i=i+1 ))
		do
			sudo /usr/sbin/useradd $name$i &> /dev/null
			echo $pass | sudo /usr/bin/passwd --stdin $name$i &> /dev/null
			sudo chage -d 0 $name$i &> /dev/null
		done
	fi
fi

