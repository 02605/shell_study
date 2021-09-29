#!/bin/bash

echo -e "1-beijing\t2-shanghai\t3-xian"
read -t 10 -p "choice: " choice

case $choice in
	"1")
		echo "beijing"
		;;
	"2")
		echo "shanghai"
		;;
	"3")
		echo "xian"
		;;
	*)
		echo "error"
		;;
esac
