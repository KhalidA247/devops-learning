#!/bin/bash

search_term="$1"
directory="$2"

 echo "Files containing $search_term:"
 grep -RIl "$search_term" "$directory" --include="*.log"



