#!/bin/bash
#Mission: Create a script that searches for a specific word or phrase across all .log files in a directory and outputs the names of the files that contain the word or phrase.

SEARCH_TERM="$1"

if [ -z "$SEARCH_TERM" ]; then
    echo "No input"
    exit 1
fi

shopt -s nullglob
log_files=(*.log)

if [ ${#log_files[@]} -eq 0 ]; then
    echo "No .log files found in this directory."
    exit 1
fi

# Search across all .log files
grep -i -l -- "$SEARCH_TERM" "${log_files[@]}"
