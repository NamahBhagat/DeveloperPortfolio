#!/bin/bash
SRC="$HOME/DeveloperPortfolio"
DEST="$HOME/cse103_backups"
LOG="$DEST/backup.log"
mkdir -p "$DEST"

TS=$(date +%Y-%m-%d_%H-%M-%S)
FILE="backup_$TS.tar.gz"

echo "[$(date)] Starting backup of $SRC ..." | tee -a "$LOG"
if tar -czf "$DEST/$FILE" -C "$(dirname "$SRC")" "$(basename "$SRC")"; then
  SIZE=$(du -h "$DEST/$FILE" | cut -f1)
  echo "[$(date)] SUCCESS: $FILE created (Size: $SIZE)" | tee -a "$LOG"
else
  echo "[$(date)] FAILED: backup not created" | tee -a "$LOG"
  exit 1
fi
echo "[$(date)] Done. Log: $LOG" | tee -a "$LOG"
