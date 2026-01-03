#!/bin/bash

# Mission: Create a script that checks the disk space usage of a specified directory and sends an alert if the usage exceeds a given threshold.
set -e

DIRECTORY="Arena2"
THRESHOLD_MB=1

if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Directory '$DIRECTORY' does not exist."
    exit 1
fi

USAGE_MB=$(du -sm "$DIRECTORY" | awk '{print $1}')

if [ "$USAGE_MB" -gt "$THRESHOLD_MB" ]; then
    echo "Warning: Disk usage for $DIRECTORY is ${USAGE_MB}MB (threshold: ${THRESHOLD_MB}MB)"
else
    echo "Disk usage for $DIRECTORY is ${USAGE_MB}MB. All is well."
fi

