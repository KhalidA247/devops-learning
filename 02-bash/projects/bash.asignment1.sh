#!/bin/bash

echo "Enter first number:"
read num1
echo "Enter second number:"
read num2

echo "Results:"
echo "$num1 + $num2 = $(( $num1 + $num2 ))"

echo "$num1 - $num2 = $(( $num1 - $num2 ))"

echo "$num1 * $num2 = $(( $num1 * $num2 ))"

if [ $num2 -eq 0 ]; 
then

    echo "This number is not divisible"
else
 
    result=$(echo "scale=2; $num1/$num2" | bc )
    echo "$num1 /$num2 = $result"
    
    
fi


