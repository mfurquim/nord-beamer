#!/bin/bash

declare -i number

for i in {1..3}
do
	number=$(( ( RANDOM % 10 )  + 1 ))
	echo -n "${number} "
	# 5 2 10
done
