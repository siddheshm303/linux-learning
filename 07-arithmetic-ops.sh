#!/bin/bash

#Arithmetic Operations
x=4
y=12

echo "X=$x and Y=$y"

#First Method
let mul=$x*$y
echo "Multiplication: $mul"

#Second Method
echo "Division: $(($x%$y))"

