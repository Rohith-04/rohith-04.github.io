#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 2 ]; then
  echo "usage: $0 \"short topic\" \"note text\""
  exit 1
fi

topic="$1"
shift
text="$*"

month=$(date +"%b %Y")
date_label="${month} — ${topic}"

# prepend to notes.yml using a temp file
tmp=$(mktemp)
printf -- "- date: \"%s\"\n  text: \"%s\"\n\n" "$date_label" "$text" > "$tmp"
cat _data/notes.yml >> "$tmp"
mv "$tmp" _data/notes.yml

nvim _data/notes.yml +1
