#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <number_of_files> <filename>"
    exit 1
fi

# Get the number of files to generate and the filename from the command line arguments
num_files=$1
file_name=$2

# Loop to create n files
for (( i = 1; i <= num_files; i++ )); do
    new_file_name="${file_name}-${i}.md"
    echo "Creating $new_file_name..."
    echo "\`\`\`go" > "$new_file_name"
    echo "" >> "$new_file_name"
    echo "\`\`\`" >> "$new_file_name"
done;

echo "$num_files files created with the filename pattern: ${file_name}-X.md"
