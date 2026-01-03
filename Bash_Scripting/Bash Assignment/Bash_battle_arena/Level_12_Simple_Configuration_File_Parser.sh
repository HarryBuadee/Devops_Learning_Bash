#!/bin/bash

#Mission: Write a script that reads a configuration file in the format KEY=VALUE and prints each key-value pair.


CONFIG_FILE="$1"

if [ -z "$CONFIG_FILE" ]; then
    echo "No input"
    exit 1
fi

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Configuration file does not exist."
    exit 1
fi

while IFS='=' read -r key value; do
    echo "Key: $key | Value: $value"
done < "$CONFIG_FILE"
