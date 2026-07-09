#!/bin/bash

echo "Enter source directory:"
read directory

backup_directory="backup_$(date +'%Y-%m-%d_%H-%M')" 

 if [ ! -d $backup_directory ]; 
 then

    mkdir $backup_directory
    echo "Backup directory created: $backup_directory"
    cp $directory/*.txt $backup_directory
    echo "Copying .txt files..."
else
    echo "backup_directory exists!"
fi

files=($backup_directory/*.txt)
count=${#files[@]}
echo "Backup complete! Files backup up: $count"