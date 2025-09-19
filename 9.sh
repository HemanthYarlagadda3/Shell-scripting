#!/bin/bash

read -p "enter the file name to print content:" file

if [ -f "$file" ]; then
        A=$(cat $file | head -n 10)
        echo "$A"

else
  echo "file not exist"

fi
