#!/bin/bash

# set -e stops the script at the error therefore in this script only print "Before the script"
set -e

echo "Before the script"

nonexistentcommand

echo "After the script"