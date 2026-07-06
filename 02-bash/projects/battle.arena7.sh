#!/bin/bash

cd Arena

ls -l *.txt | sort -n -k5,5 | awk '{print $NF,"-",$5}'

