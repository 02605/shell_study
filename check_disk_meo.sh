#!/bin/bash

disk_meo=$(df -h | grep "/$" | awk '{print $5}' | cut -d "%" -f 1)
if [ "$disk_meo" -gt 90 ]
	then
		echo "disk_gonna_full" | mail -s "warning from vmware" rosebudx@163.com
fi
#[ $disk_meo -gt 60 ] && echo "disk_gonna_full" || echo "disk_health"
