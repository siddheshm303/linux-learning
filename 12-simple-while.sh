#!/bin/bash

count=0

while [[ count -le 10 ]]
do
	echo "Counting... $count"
	(( count++ ))
	sleep 1s
done

