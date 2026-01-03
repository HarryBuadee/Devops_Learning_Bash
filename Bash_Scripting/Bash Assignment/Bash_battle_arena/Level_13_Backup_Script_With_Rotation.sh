#!/bin/bash

#Mission: Create a script that backs up a directory to a specified location and keeps only the last 5 backups.

set -e

SOURCE_DIR="$1"
BACKUP_DIR="$2"
MAX_BACKUPS=5

if [ -z "$SOURCE_DIR" ] || [ -z "$BACKUP_DIR" ]; then
    echo "No input"
    exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory does not exist."
    exit 1
fi

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"


tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

echo "Backup created: $BACKUP_NAME"

# Rotate backups (keep only last 5)
cd "$BACKUP_DIR"

BACKUP_COUNT=$(ls -1 backup_*.tar.gz 2>/dev/null | wc -l)

if [ "$BACKUP_COUNT" -gt "$MAX_BACKUPS" ]; then
    REMOVE_COUNT=$((BACKUP_COUNT - MAX_BACKUPS))
    ls -1t backup_*.tar.gz | tail -n "$REMOVE_COUNT" | xargs rm -f
    echo "Old backups removed. Kept last 5"
fi
