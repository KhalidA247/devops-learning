#!/bin/bash

calculate_md5sum() {
    local file_path="$1"
    md5sum "$file_path"
}

calculate_md5sum "example.txt"

# You can also substitute md5sum for sha256

compare_checksums() {
    local checksum1="$1"
    local checksum2="$2"

    if [[ "$checksum1" == "$checksum2" ]]; then 
        echo "Checksums match!"
    else
        echo "Checksums do not match, File integtrity compromised"
    fi
}

compare_checksums