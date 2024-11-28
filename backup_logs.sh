#!/bin/bash

# Set the log directory from the first argument or use the current directory
LOG_DIR="${1:-.}"

# Create the backup directory
mkdir -p "$LOG_DIR/backup"

# Get the current date and time
DATE=$(date +'%Y-%m-%d_%H-%M-%S')

# Archive and compress all .log files in the specified directory
tar -czPf "$LOG_DIR/backup/log_$DATE.tar.gz" "$LOG_DIR"/*.log

echo "Logs archived at: $LOG_DIR/backup/log_$DATE.tar.gz"

