#!/bin/bash

file_name() {

    local filename="$1"
  
if [ -f "$filename" ];
then
    local lines 
    lines=$(wc -l < "$filename")
    echo "Number of lines:$lines"
else
    echo "No file provided"
fi
}

file_name "$1"