#!/bin/bash

for (( i=1;i<=10;i=i+1 ))
do
	if [ "$i" -eq 3 ]
	then
	#	break		
		continue
	fi
	echo $i
done
