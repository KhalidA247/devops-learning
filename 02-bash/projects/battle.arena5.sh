#!/bin/bash

mkdir Battlefield

cd Battlefield

touch knight.txt sorcerer.txt rogue.txt

file=knight.txt

if [ -f $file ]
then

    mkdir Archive 
    mv $file Archive
    echo "$file has been moved to Archive."
fi

cd .. 
ls Battlefield
ls battlefield/Archive