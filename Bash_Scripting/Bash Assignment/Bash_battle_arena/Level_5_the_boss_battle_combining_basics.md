# Level 5: The Boss Battle - Combining Basics

## Mission: Combine what you've learned! Write a script that:

1. Creates a directory names 'Battlefield'
2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
4. List the contents of both Battlefield and Archive.




`````
#!/bin/bash

# 1. Create Battlefield directory
mkdir -p Battlefield

# 2. Create files inside Battlefield
touch Battlefield/{knight,sorcerer,rogue}.txt

# 3. Check if knight.txt exists and move it to Archive
if [ -f Battlefield/knight.txt ]; then
    mkdir -p Archive
    mv Battlefield/knight.txt Archive/
fi

# 4. List contents
echo "Contents of Battlefield:"
ls Battlefield

echo
echo "Contents of Archive:"
ls Archive

`````
