#!/bin/bash

#Mission: Create an interactive script that presents a menu with options for different system tasks (e.g., check disk space, show system uptime, list users), and executes the chosen task.

set -e

while true; do
    echo
    echo "Choose from:"
    echo
    echo "1) Check disk space"
    echo "2) Show current directory"
    echo "3) Check system uptime"
    echo "4) Show logged-in users"
    echo "5) Show hidden files"
    echo "6) Exit"

    read -p "Choose an option [1-6]: " choice

    case "$choice" in
        1)
            echo "Disk space:"
            df -h
            ;;
        2)
            echo "Current directory:"
            pwd
            ;;
        3)
            echo "System uptime:"
            uptime
            ;;
        4)
            echo "Users:"
            who
            ;;
        5)
            echo "Current directory contents (including hidden files):"
            ls -la
            ;;
        6)
            echo "Exited."
            exit 0
            ;;
        *)
            echo "Invalid option. Please select 1–6."
            ;;
    esac
done
