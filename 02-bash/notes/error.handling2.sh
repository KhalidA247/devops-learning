#!/bin/bash

FILE="nonexistent.txt"

# Again a if statement is placed as a failsafe for the script and to give a cleaner error message.
if [ -f "$FILE" ]; then
    echo "File exists."
else
    echo "File does not exist"
fi
