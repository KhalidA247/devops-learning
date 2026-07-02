#!/bin/bash

file=hero.txt

cd Arena

if [ -f $file ]
then

    echo "Hero found!"
else
    echo "Hero Missing!"
fi
