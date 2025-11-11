#!/bin/bash


read -p "Enter the file name to check: " file

if [ -z "$file" ]; then
  echo "Error: No file name entered!"
  exit 1
fi


if [ ! -f "$file" ]; then
  echo "Error: File '$file' not found!"
  exit 1
fi

lines=$(wc -l < "$file")
words=$(wc -w < "$file")
chars=$(wc -m < "$file")


echo
echo "File: $file"
echo "-------------------------"
echo "Lines      : $lines"
echo "Words      : $words"
echo "Characters : $chars"
echo "-------------------------"
