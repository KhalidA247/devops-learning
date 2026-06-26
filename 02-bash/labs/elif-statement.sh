#!/bin/bash

score=70

if [ $score -ge 90 ]
then
    echo "Excellent!"
elif [ $score -ge 80 ]
then
    echo "Good!"
else
    echo "Better luck next time!"
fi