#!/bin/bash

i=1
sum_=0


until [ $i -gt 100 ]
do
	sum_=$(( $sum_+$i  ))
	i=$(( $i+1  ))
done
echo $sum_
