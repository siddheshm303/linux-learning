#!/bin/bash

echo "==Choise Your Choice=="
echo "a. Show current date"
echo "b. Show your username"
echo "c. Check if number is even or odd"
echo "d. Print Array element"
echo "e. Exit"

read -p "Enter your choice :" choice

case $choice in
	a)
		echo "Today's, date is:"
		date
		;;
	b)
		echo "Logged in as $USER"
		;;
	c)
		read -p "Enter a number: " num
		if (( $num % 2 == 0 )); then
			echo "$num is an even number"
		elif (( $num % 2 != 0 )); then
			echo "$num is an odd number"
		else
			echo "Invalid input"
		fi
		;;
	d)
		myArray=( Apple Mango Banana )
	    	echo "Array Elements are"
		echo "First: ${myArray[0]}"
		echo "Second: ${myArray[1]}"
		echo "Third: ${myArray[2]}"
		;;
	e)
		echo "Exiting..."
		;;
esac


