#!/bin/bash

# Replace "filename.txt" with your file name
filename=$1
new_final_cars_name=$2

# Check if the file exists
if [ -e "$filename" ]; then
    # Read each line of the file
    while IFS= read -r line; do
        # Process each line here
        state_renamed_resource=`echo "$line" | sed 's/\.[^.]*$/'"${new_final_cars_name}"'/'`
        # echo $line $state_renamed_resource
        terraform state mv -ignore-remote-version $line $state_renamed_resource
    done < "$filename"
else
    echo "File '$filename' not found."
fi
