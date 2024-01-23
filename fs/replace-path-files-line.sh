#!/bin/bash

# Set the folder to search files
working_path=$1

# Set the string you want to search for
search_string=$2

mapfile -t files_array < <(find $working_path -type f)

# Loop through all files in the current directory
for file in ${files_array[@]}; do
    # Check if the file is a regular file
    if [ -f "$file" ]; then
        # Use grep to check if the string is present in the file
        if grep -q $search_string $file; then
            # Use sed to remove the line containing the string
            parsed_search_string=$(echo $search_string | sed 's/\//\\\//g')
            sed -i "/$parsed_search_string/d" "$file"
            echo "Removed line from $file"
        fi
    fi
done
