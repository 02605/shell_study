#!/bin/bash

read -t 10 -p "input num1: " num1
read -t 10 -p "input num2: " num2
read -t 10 -p "input oper: " ope

if [ -n "$num1" -a -n "$num2" -a -n "$ope" ]
	then
	test1=$(echo "$num1" | sed 's#[0-9]##g')
	test2=$(echo "$num2" | sed 's#[0-9]##g')
	if [ -z "$test1" -a -z "$test2" ]
		then
		case $ope in 
			"+")
				value=$(($num1+$num2))
				;;
			"-")
				value=$(($num1-$num2))
				;;
			"*")
				value=$(($num1*$num2))
				;;
			"/")
				value=$(($num1/$num2))
				;;
			*)
				echo "please enter a valid value"
				exit 10
				;;
		esac
	else
		echo "please enter a valid value"
	fi
else
	echo "please input something"
	exit 1
fi
echo "$num1 $ope $num2 = $value"
