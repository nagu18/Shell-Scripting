#!/bin/bash
FILE="$HOME/Desktop/ifconfig.txt"
if [ -e "$FILE" ]; then
    if [ -n "$(cat "$FILE")" ]; then 
        cat "$FILE"
    else
        echo "file is emity"
    fi

else
    echo "is not present"
fi

