#!/bin/bash

# set -x is a great tool to debug scripts as it prints the whole script before executing to see any errors.
set -x 

echo "Starting the script."
X=10
Y=20
Z=$((X + Y))
echo "The value of Z is: $Z"

# You are able to use set +x to open and close areas you woudl like to solely debug.
set +x

# You are also able to combine all three with one command. This should be used carefully within the right context of a script.
set -eux

# Other set commands 

set -o nounset - # Works the same at set -u and catches unbound variables.
set -o errexit - # Works the same as set -e. 
set -o pipefail - # Cauuses entire pipe to fail is first command does not exist.