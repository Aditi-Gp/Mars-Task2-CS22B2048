#!/bin/bash

echo $(pwd)
current_directory= $(pwd)
current_directory=$1

modified_directory="$current_directory/Modified"
mkdir -p "$modified_directory"

find "$current_directory" -type f -name "*.txt" -exec bash -c '
    for file do
        base_name="${file%.*}"
        cp "$file" "$modified_directory/${base_name}.bak"
    done
' bash {} +
