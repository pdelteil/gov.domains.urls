#!/bin/bash

# Directory containing the files
directory="."  # Replace this with your directory path

# Generate the markdown list header
echo "### Line Counts" > line_counts.md
echo "File | Number of Lines" >> line_counts.md
echo "---- | ---------------" >> line_counts.md

# Loop through each file in the directory and count lines
for file in "$directory"/*.txt
do
    if [ -f "$file" ]; then  # Check if it's a regular file
        line_count=$(wc -l < "$file")
        echo "$(basename "$file") | $line_count" >> line_counts.md
    fi
done

# Display the contents of line_counts.md
cat line_counts.md
