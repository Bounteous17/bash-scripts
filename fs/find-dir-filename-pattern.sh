#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory_path> <filename_pattern>"
    exit 1
fi

directory_path=$1
filename_pattern=$2

# Use the find command to search for files with the specified pattern in the given directory
find "$directory_path" -type f -name "$filename_pattern"
