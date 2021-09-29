#!/bin/bash

i=1
sum_=0
while [ $i -le 100 ]
do
	sum_=$(( $sum_+$i ))
	i=$(( $i+1 ))
done

echo $sum_
