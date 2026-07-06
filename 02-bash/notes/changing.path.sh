#!/bin/bash

# Add new/existing directory 
mkdir my_scripts
vi my_scripts/hello_world.sh
chmod +x my_scripts/helloworld.sh

# Add directory to path permanently

echo "export PATH=$PATH:~/my_scripts" >> /.zshrc
# This has now added our directory to our existing path. ./bashrc if you are in a bash shell.

# Save you changes 
source ~/.zshrc 

# Run your script from anywhere without needing to be in the specifc directory.
hello_world.sh