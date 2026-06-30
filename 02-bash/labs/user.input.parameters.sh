#!/bin/bash

greet() {

    local name

    if [ $# -eq 0 ]; then
    echo "What is your name?"
    read name 
else
    name="$1"
fi

    echo "Hello, $name"
}

greet "Khalid"