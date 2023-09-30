#!/bin/bash

# Define the source directory and backup directory
source_dir="./"  # The current directory
backup_dir="./backup"  # Directory within the source directory

# Create a timestamp with the current date and time
timestamp=$(date +"%Y%m%d%H%M%S")

# Create the backup directory with the timestamp inside the source directory
backup_dir_with_timestamp="$source_dir$backup_dir/backup_$timestamp"

# Create the backup directory
mkdir -p "$backup_dir_with_timestamp"

# Copy all files from the source directory to the backup directory
cp -r "$source_dir"* "$backup_dir_with_timestamp"

# Display a message indicating the backup process is complete
echo "Backup completed. Files copied to: $backup_dir_with_timestamp"

