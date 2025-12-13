Level 4: File Manipulation

Mission: Create a script that copies all .txt files from the Arena directory to a new directory called Backup.


scripty

````
#!/bin/bash

mkdir -p Backup

# Check if there are any .txt files in Arena
if ls *.txt 1> /dev/null 2>&1; then
    cp Arena/*.txt Backup/
    echo "Text files copied to Backup."
else
    echo "No text documents found."
fi


`````
