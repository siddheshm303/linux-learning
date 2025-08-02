#!/bin/bash

read -p "Enter a number: " num

if [[ $num -lt 0 ]] then
echo "$num is negetive number"
elif [[ $num == 0 ]] then
echo "$num is zero"
elif [[ $num -gt 0 ]] then
echo "$num is positive number"
else
echo "Invalid Input"
fi
