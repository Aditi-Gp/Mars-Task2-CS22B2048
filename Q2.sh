#!/bin/bash

echo $(pwd)
location= $(pwd)
location=$1

modified="$current_directory/Modified"
mkdir -p "$modified"

find "$location" -type f -name "*.txt" -exec bash -c '
    for file do
        base_name="${file%.*}"
        cp "$file" "$modified/${base_name}.bak"

        echo "$(cat "$file") $(date)" > "$modified/${base_name}.bak"
    done
' bash {} +
