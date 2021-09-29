#!/bin/bash

if [ $(df -h | grep "/$" | awk '{print$5}' | cut -d "%" -f 1) -gt 15 ]
	then
		$(echo "full" | mail -s "hello_full" rosebudx@163.com)
	else
		
		$(echo "health" | mail -s "hello_health" rosebudx@163.com)
fi
