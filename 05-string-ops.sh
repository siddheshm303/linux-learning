#!/bin/bash

#Define string
myStr="Hey Buddy, How are you?"
echo "My string --- $myStr"

#Length
myStrLength=${#myStr}
echo "Length of string --- $myStrLength"

#UpperCase and LowerCase
upper=${myStr^^}
echo "In UpperCase --- $upper"
lower=${myStr,,}
echo "In LowerCase --- $lower"

#Replace
Replace=${myStr/Buddy/Siddhesh}
echo "After replacing --- $Replace"

#Slicing
Slice=${myStr:11:12}
echo "After slicing --- $Slice"
