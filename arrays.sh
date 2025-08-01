#!/bin/bash

#Defining Array
myArray=( 1 2 30.5 Hello "Hey Buddy!" )

echo "Values of array are ${myArray[*]}"
echo "4th value is ${myArray[3]}"

#Lenght of Array
echo "Lenght of the array is ${#myArray[*]}."

#Specific Values
echo "Values from 2-4 are ${myArray[*]:1:3}"

#Update an array
myArray+=( new 4 5 )
echo "Updated array: ${myArray[*]}."

