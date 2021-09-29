#!/bin/bash

ls *.sh>self_sh.log

for each_one in $(cat self_sh.log)
do
	echo $each_one
done
