#!/bin/bash

read -p "Enter the directory path to search for .txt files (press Enter for current directory): " DIR

DIR=${DIR:-.}

if [ ! -d "$DIR" ]; then
    echo "Error: Directory '$DIR' does not exist."
    exit 1
fi

echo "Listing all .txt files in '$DIR' and its subdirectories:"
find "$DIR" -type f -name "*.txt"
