#!/bin/bash

#Mission: Combine the skills you've gained! Write a script that:

#1. Presents a menu to the user with the following options:

#- Check disk space
#- Show system uptime
#- Backup the Arena directory and keep the last 3 backups
#- Parse a configuration file settings.conf and display the values

2. Execute the chosen task.



set -e

ARENA_DIR="Arena2"
BACKUP_DIR="Backups"
CONFIG_FILE="settings.conf"
MAX_BACKUPS=3

mkdir -p "$BACKUP_DIR"

while true; do
    echo
    echo "Choose from:"
    echo "1) Check disk space"
    echo "2) Show system uptime"
    echo "3) Backup the Arena and keep the last three backups"
    echo "4) Parse configuration file settings.conf"
    echo "5) Exit"

    read -p "Choose an option [1-5]: " choice

    case "$choice" in
        1)
            echo "Disk space:"
            df -h
            ;;

        2)
            echo "System uptime:"
            uptime
            ;;

        3)
            if [ ! -d "$ARENA_DIR" ]; then
                echo "Error: Source directory does not exist."
                continue
            fi

            TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
            BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

            tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$ARENA_DIR"
            echo "Backup created: $BACKUP_NAME"

            # Remove old backups, keep last 3
            ls -1t "$BACKUP_DIR"/backup_*.tar.gz 2>/dev/null \
              | tail -n +$((MAX_BACKUPS + 1)) \
              | xargs -r rm --

            echo "Old backups cleaned."
            ;;

        4)
            if [ ! -f "$CONFIG_FILE" ]; then
                echo "Configuration file not found."
                continue
            fi

            echo "Configuration values:"
            while IFS='=' read -r key value; do
                [[ -z "$key" || "$key" == \#* ]] && continue
                echo "Key: $key | Value: $value"
            done < "$CONFIG_FILE"
            ;;

        5)
            echo "Exiting. Well done 🏆"
            exit 0
            ;;

        *)
            echo "Invalid option. Please choose 1–5."
            ;;
    esac
done
