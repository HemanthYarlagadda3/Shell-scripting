#!/bin/bash

read -p "enter file name :- " file

if [ -f "$file" ]; then
    echo "file $file exists"
else
    echo "file $file does not exist"
fi
