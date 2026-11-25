#!/bin/bash
set -e          # exit if any command fails
set -u          # treat unset variables as errors
set -o pipefail # fail if any part of a pipe fails

if [ $# -lt 1 ]; then
  echo "Usage: $0 <filename>" >&2
  exit 1
fi

FILENAME="$1"
if [ ! -f "$FILENAME" ]; then
  echo "Error: '$FILENAME' not found." >&2
  exit 1
fi

echo "Processing: $FILENAME"
wc -l "$FILENAME"
echo "Done."
