#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required. Usage: writer.sh <file_path> <string_to_write>"
    exit 1
fi

writefile=$1
writestr=$2

# Create directory if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write string to the file, overwriting if it exists
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Error: Could not create or write to file $writefile."
    exit 1
fi
