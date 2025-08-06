#!/bin/bash

csvFile="./files/grades.csv"

awk 'NR > 1' "$csvFile" | while IFS=',' read -r name marks grade
do
	echo "Student: $name | Marks: $marks | Grade: $grade"
done

