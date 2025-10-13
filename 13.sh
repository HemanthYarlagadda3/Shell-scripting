[ec2-user@ip-172-31-23-238 ~]$ cat shellscript.sh
#!/bin/bash

read -p "Enter the directory path you want to copy jpg files to: " D

if [ ! -d "$D" ]; then
    echo "Mentioned destination directory path not available"
    exit 1
fi

cp *.jpg "$D" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "All your jpg files copied to path $D successfully"
else
    echo "No jpg files found in the current directory or an error occurred."
fi

