#!/bin/bash

directory=bash_demo
file=demo.txt

mkdir $directory
echo "Directory $directory created."

cd $directory

touch $file
echo "File $file has been created"

echo "The file $file was created by a bash script on: $(date +'%Y-%m-%d')" >> $file

cat $file