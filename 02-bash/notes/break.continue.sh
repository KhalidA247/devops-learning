#!/bin/bash

for (( i=1; i<=5; i++ ))
do

    if [ $i -eq 5 ]
    then 
        # Code block to be entered
        continue/break
    fi
    echo "Number: $i"
done

# When broken - the code wtill end the loop after the current iteration
-Number 1
-Number 2
END


# When using continue - The code will skip this loop and go to the next number
-Number 1
-Number 2
-Number 4
-Number 5