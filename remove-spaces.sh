#!/bin/bash

# Iterate over all files in the current directory
for file in *\ *; do
    # Check if the filename contains spaces
    if [[ -f "$file" ]]; then
        # Replace spaces with hyphens
        newname=$(echo "$file" | tr ' ' '-')
        # Rename the file
        mv -- "$file" "$newname"
        echo "Renamed: $file -> $newname"
    fi
done

