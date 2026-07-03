#!/bin/bash

# set -u stops the script when there is a undefined variable
# In this script (W) is an undefined variable.
set -u

X=10
Y=20
Z==$((X + Y + W))

    echo "Z equals: $Z"