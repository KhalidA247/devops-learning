#!/bin/bash

read -p "Enter your name: " name
count=1

while true
do

    echo "Count: $count"
    (( count++ ))
    if [ $count -eq 4 ]
    then 
        break
    fi
done

echo "The count has concluded!. Thanks $name"