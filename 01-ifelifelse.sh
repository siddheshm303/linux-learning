#!/bin/bash

if [ {$1,,} = siddhesh ]; then
	echo "Hi Siddhesh!"
elif [ -z {$1,,} ]; then
	echo "No name provided. Please run the script like: ./ifelifelse.sh siddhesh"
else
	echo "Hello $1! Yor are not Siddhesh"
fi

