#!/bin/bash

#Mission: Write a script that:

#1. Creates a directory called Arena_Boss.
#2. Creates 5 text files inside the directory, named file1.txt to file5.txt.
#3. Generates a random number of lines (between 10 and 20) in each file.
#4. Sorts these files by their size and displays the list.
#5. Checks if any of the files contain the word 'Victory', and if found, moves the file to a d


set -e

mkdir -p Arena_Boss Victory_Archive

rm -f Arena_Boss/*.txt

for i in {1..5}; do
    file="Arena_Boss/file$i.txt"
    touch "$file"

    lines=$((RANDOM % 11 + 10))  # 10–20 lines

    j=1
    while [ "$j" -le "$lines" ]; do
        echo "Line $j in $file" >> "$file"
        j=$((j + 1))
    done
done

# Add Victory to one random file
victory_file="Arena_Boss/file$((RANDOM % 5 + 1)).txt"
echo "Victory achieved" >> "$victory_file"

echo "Files sorted by size:"
du -b Arena_Boss/*.txt | sort -n

# Search for Victory and move matching file
for file in Arena_Boss/*.txt; do
    if grep -q "Victory" "$file"; then
        echo "$file contains the word Victory"
        mv "$file" Victory_Archive/
        echo "$file has been moved to Victory_Archive."
    fi
done


