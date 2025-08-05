#!/bin/bash

#File that contains student names(one per line)
students="./files/students.txt"

#Loop 1
for student in $(cat "$students");
do
	echo "Processing student: $student"

	marks=()

	for i in {1..10};
	do
		mark=$(( RANDOM % 61 + 40 ))
		marks+=($mark)
	done

	echo "Marks: ${marks[@]}"

	total=0

	for (( j=0;j<${#marks[@]};j++ ));
	do
		total=$(( total + marks[j] ))
	done

	avg=$(( total/10 ))

	echo "Average marks: $avg"
	echo "-------------------"
done

