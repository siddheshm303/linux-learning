#!/bin/bash

#Key-Value pair array
#Definition
declare -A myArray
myArray=( [name]=Siddhesh [age]=21 [city]=Thane )

echo "My name is ${myArray[name]}. I live in ${myArray[city]}."

