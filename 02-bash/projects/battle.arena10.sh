#!/bin/bash

# Create a directory called Arena_boss to hold all our files
mkdir Arena_boss

# Move into the Arena_boss directory so everything below happens inside it
cd Arena_boss

# Loop 5 times (i = 1 to 5) to create file1.txt through file5.txt
for (( i=1; i<=5; i++ ))
do

    # Create an empty file named fileN.txt (e.g. file1.txt, file2.txt...)
    touch file$i.txt  
    # Pick a random number of lines between 10 and 20 for this file
    # (RANDOM % 11 gives 0-10, +10 shifts it to 10-20)
    lines=$(( RANDOM % 11 +10 ))
# Loop from 1 up to however many lines we randomly picked
for (( j=1; j<=lines; j++ ))
do

    # Append a line of text to the current file
    echo "This is line $j" >> file$i.txt
done
 
done 

# Print a header before showing the sorted file list
echo "Files sorted by size:"
# Find all files in the current directory, list them with details (-lh = human-readable sizes),
# then sort that output by the 5th column (file size), smallest to largest
find . -type f -exec ls -lh {} + | sort -k5,5

# Create a directory to hold any files that mention "Victory"
mkdir Victory_Archive

# Loop over every .txt file in the current directory
for FILE in *.txt
do

# Check if the word "Victory" appears anywhere in this file (-q = quiet, no output)
if grep -q "Victory" "$FILE"; 
then
    # If found, move the file into Victory_Archive/
    mv "$FILE" Victory_Archive/
    # Print a message confirming the move
    echo "$FILE contains 'Victory' and has been moved to Victory_Archive/"
fi

done