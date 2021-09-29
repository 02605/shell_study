#!/bin/bash

read -t 10 -p "input a number: " num_

p=$(echo $num_ | sed 's#[0-9]##g' )

[ -n "$p"  ] && echo "$num_ is not a number" && exit 10

echo "number is $num_"
