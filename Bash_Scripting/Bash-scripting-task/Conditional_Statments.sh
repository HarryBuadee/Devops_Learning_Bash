#!/bin/bash

# Conditional Statements:
# Write a script that checks if a file exists and prints a message indicating whether it exists or not. If it exists, the script should also check if the file is readable, writable, or executable

read -p "Enter filename to check: " file

if [ -e "$file" ]; then
   echo "This file exists: $file"
else
   echo "This file does not exist"
   exit 1
fi

if [ -r "$file" ]; then
    echo "The file is readable."
else
    echo "The file is NOT readable."
fi

if [ -w "$file" ]; then
    echo "The file is writable."
else
    echo "The file is NOT writable."
fi

if [ -x "$file" ]; then
    echo "The file is executable."
else
    echo "The file is NOT executable."
fi
