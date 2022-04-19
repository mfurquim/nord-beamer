#!/bin/bash

declare -i number
number=0

while read line
do
	if [ "${line}" != "" ]
	then
		number=$((number + 1))
	fi
done < ${0}

echo "${number}"
