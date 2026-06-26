#!/bin/bash

age=20
grade=75 

if [ $age -gt 18 ];
then
    echo "You are eligible based on age!"
    if [ $grade -ge 80 ]; 
then
    echo "You are eligible based on grade!"
    echo "Congratulations you are eligible for the schorlarship"
else 
    echo "Sorry your grade is not high enough!"
fi

else 
    echo "You are not eligible"
fi