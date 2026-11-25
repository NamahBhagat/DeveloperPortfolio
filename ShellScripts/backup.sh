#!/bin/bash
# Author: Namah Bhagat
if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi
if [ ! -d "$1" ]; then
    echo "Error: folder '$1' does not exist"
    exit 1
fi
DEST=~/DeveloperPortfolio_Backups
mkdir -p "$DEST"
TS=$(date +%Y-%m-%d_%H-%M-%S)
FILE="$DEST/backup_$TS.tar.gz"
tar -czf "$FILE" -C "$(dirname "$1")" "$(basename "$1")"
SIZE=$(du -h "$FILE" | cut -f1)
echo "Backup successful: $(basename "$FILE") | Size: $SIZE"
echo "$TS - Backup of $1 -> $FILE : SUCCESS" >> "$DEST/backup.log"
