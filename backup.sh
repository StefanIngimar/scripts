#!/bin/bash

source="/home/stefan/dev/"
destination="/home/stefan/backup/"

mkdir -p "$destination"

timestamp=$(date +%Y-%m-%d_%H-%M-%S)
backup_name="backup_$timestamp.tar.gz"

tar -czf "$destination/$backup_name" "$source" && echo "Backup completed successfully at $destination/$backup_name" || echo "Backup failed"
