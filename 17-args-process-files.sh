#!/bin/bash

#Purpose: Search for a keyword in multiple files and save results

if [ $# -lt 2 ]; then
	echo "Usage: $0 <keyword> <file1> [file2, file3 ...]"
	exit 1
fi

keyword=$1
shift

output_file="outputs/17-output.txt"
> "$output_file"

echo "Searching for $keyword in given files..."
echo "Output will be stored in $output_file"
echo "=====================================" >> "$output_file"


for file in "$@"; do
	if [ -f "$file" ]; then
		echo "Processing $file..."
		matches=$(grep -n "$keyword" "$file")
		if [ -n "$matches" ]; then
			echo "File: $file" >> "$output_file"
			echo "$matches" >> "$output_file"
			echo "--------------------------------------" >> "$output_file"
		else
			echo "No matches in $file."
		fi
	else
		echo "File not found: $file" >> "$output_file"
		echo "File not found: $file"
	fi
done

echo "Done! Check '$output_file' for result."
