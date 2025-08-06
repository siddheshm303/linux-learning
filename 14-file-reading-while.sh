#!/bin/bash

file="./files/students.txt"

while IFS= read -r myvar
do
	echo "It's $myvar"
done < "$file"

