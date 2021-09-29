#!/bin/bash

read -t 30 -p "input a filename:  " filename

if [ -z "$filename" ]
	then 
		echo "please input"
		exit 1
elif [ ! -e "$filename" ]
	then
		echo "not exist"
		exit 0
elif [ -d "$filename" ]
	then
		echo "It's a dir"
		exit 0
elif [ -f "$filename" ]
	then
		echo "It's a file"
		exit 0
else
	echo "I don't know"
fi
