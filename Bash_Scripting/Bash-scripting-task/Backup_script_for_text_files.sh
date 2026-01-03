#!/bin/bash

#Write a script that backs up all .txt files from a specified source directory to a backup directory.

#Requirements:

#Prompt the user to enter the source directory

#Automatically create a backup directory if it does not already exist

#Copy all .txt files from the source directory to the backup directory

#Append a timestamp to the backup directory name

#Display the total number of files successfully backed up


read -p "Enter the source directory: " dir


if [ ! -d "$dir" ]; then
   echo "Error: Source directory '$dir' does not exist."
   exit 1
fi


TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_$TIMESTAMP"


mkdir -p "$BACKUP_NAME"
echo "Created backup folder: $BACKUP_NAME"


file_count=$(ls -1 "$dir"/*.txt 2>/dev/null | wc -l)

if [ "$file_count" -gt 0 ]; then
    echo "Copying $file_count .txt files..."
    # Copy files into the new timestamped folder
    cp "$dir"/*.txt "$BACKUP_NAME/"
    echo "Backup complete!"
else
    echo "No .txt files found to back up."
    # Clean up the empty folder we just made
    rmdir "$BACKUP_NAME"
fi
