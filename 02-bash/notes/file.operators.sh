#!/bin/bash

# 1st option in reading files
read_file() {
    local file_path="$1"

    while IFS= read -r line; do
        echo "$line"
    done < "$file_path"
}

read_file "example.txt"

# 2nd option in reading files
process_file() {
    local file_path="$1"

    cat "$file_path" | while IFS= read -r lines; do
    echo "Processing lines: $line"
    done

}