#!/bin/bash
TARGET="${1:-.}"
if [ ! -d "$TARGET" ]; then
  echo "Error: '$TARGET' is not a directory" >&2
  exit 1
fi

echo "Organising files in: $(realpath "$TARGET")"
moved=0
skipped=0
for f in "$TARGET"/*; do
  [ -f "$f" ] || continue
  name=$(basename "$f")
  ext="${name##*.}"
  if [ "$ext" = "$name" ]; then
    skipped=$((skipped+1))
    continue
  fi
  mkdir -p "$TARGET/$ext"
  mv "$f" "$TARGET/$ext/"
  echo " Moved: $name --> $ext/"
  moved=$((moved+1))
done
echo "Done! Organised: $moved | Skipped: $skipped"
