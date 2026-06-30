#!/bin/bash

print_args() {

echo "Number of arguments: $#"
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "Third argument: $3"
echo "All arguments: $@" 
}

print_args "Khalid" "Yusuf" "Musa"