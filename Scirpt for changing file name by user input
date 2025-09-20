#!/bin/bash

read -p "Enter the original file name you want to rename:" A

if [ -f "$A" ]; then
        read -p "your file $A exists, now please enter the new name to it :" B
        mv $A $B
        echo "your file name changed succesfully to $B"

else

  echo "Your file didnt exist in this path"

fi
