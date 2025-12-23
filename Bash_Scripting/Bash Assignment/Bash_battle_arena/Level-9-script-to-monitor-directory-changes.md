


``````
#!/bin/bash

# Directory to monitor (from first argument)
directory=$1

# Log file to store changes
logfile="directory_changes.log"

# Check if directory argument is provided
if [ -z "$directory" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Notify user that monitoring has started
echo "Monitoring $directory..." | tee -a "$logfile"

# Monitor directory continuously and log events with timestamps
inotifywait -m -e create,modify,delete "$directory" | while read event; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $event" | tee -a "$logfile"
done

```````
