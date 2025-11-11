#!/bin/bash

read -p "Enter the file name: " file

if [ ! -f "$file" ]; then
  echo "Error: File '$file' not found!"
  exit 1
fi


read -p "Enter the string to search for: " find


if [ -z "$find" ]; then
  echo "Error: No search string entered!"
  exit 1
fi

echo
echo "Searching for \"$find\" in '$file'..."
echo "-------------------------------------------"

grep -n "$find" "$file"

if [ $? -ne 0 ]; then
  echo "No matches found for \"$find\" in '$file'."
fi
