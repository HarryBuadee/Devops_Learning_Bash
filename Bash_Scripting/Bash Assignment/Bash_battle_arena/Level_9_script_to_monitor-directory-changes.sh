
#!/bin/bash

directory="$1"
logfile="directory_changes.log"

if [ -z "$directory" ]; then
    echo "No input try again"
    exit 1
fi

if [ ! -d "$directory" ]; then
    echo "Directory does not exist."
    exit 1
fi

inotifywait -m -e create,modify,delete "$directory" | while read event; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $event" >> "$logfile"
done
