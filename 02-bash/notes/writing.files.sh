#!/bin/bash

write_to_file() {
    local file_path="$1"
    local data="$2"

    echo "$data" >> "$file_path"
    (>) - removes old data
    (>>) - appends data 

}

write_to_file "example.txt" "Hello Khalid"