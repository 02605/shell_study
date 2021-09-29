#!/bin/bash

ssh_flag=$(netstat -tuln | awk '{print $4}' | grep ":22$")

if [ "$ssh_flag" == "" ]
	then
		echo "ssh is down,  must restart"
		sudo /etc/init.d/sshd start &> /dev/null
	else
		echo "ssh is running"
fi

