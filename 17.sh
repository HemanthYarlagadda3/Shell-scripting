#!/bin/bash

read -p "Enter the CPU usage threshold (%): " threshold


if ! [[ "$threshold" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Error: Please enter a valid numeric value for CPU percentage!"
  exit 1
fi

echo
echo "Processes consuming more than $threshold% CPU:"
echo "------------------------------------------------------------"
echo "PID   USER        %CPU   %MEM   COMMAND"
echo "------------------------------------------------------------"


ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | awk -v limit="$threshold" '$3 > limit {printf "%-6s %-10s %-6s %-6s %s\n", $1, $2, $3, $4, $5}'


if [ $? -ne 0 ]; then
  echo "No processes found exceeding $threshold% CPU."
fi
