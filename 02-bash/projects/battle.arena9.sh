#!/bin/bash

directory="Arena"
LOG_FILE="change_log.txt"

if [ ! -d "$directory" ]
then 

    echo "Directory does not exist"
    exit 1
fi

fswatch -r "$directory" | while read event; do

if [ -e "$event" ]
then

echo "$(date +'%Y-%m-%d %H:%M:%S')" - File modified/created : $event >> "$LOG_FILE" 

else

echo "$(date +'%Y-%m-%d %H:%M:%S')" File deleted: $event >> "$LOG_FILE"
fi

done