#!/bin/bash

#Mission: Write a script that sorts all .txt files in a directory by their size, from smallest to largest, and displays the sorted list.


shopt -s nullglob
txt_files=(*.txt)

if [ ${#txt_files[@]} -eq 0 ]; then
    echo "No .txt files found in this directory."
    exit 1
else
    du -b "${txt_files[@]}" | sort -n
fi

