#!/bin/bash

A=$(df -hT | awk 'NR==1 || $2!="tmpfs"')

echo "Total disk values of your server:"
echo "$A"
