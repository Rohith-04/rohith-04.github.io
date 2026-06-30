#!/usr/bin/env bash
set -euo pipefail

if [ $# -eq 0 ]; then
  echo "usage: $0 \"project title\""
  exit 1
fi

title="$*"

# compute next order number
max_order=$(cd _projects && grep -h '^order:' *.md 2>/dev/null | awk -F': ' '{print $2}' | sort -n | tail -1)
next_order=$((max_order + 1))

# generate a slug for the filename
slug=$(echo "$title" \
  | tr '[:upper:]' '[:lower:]' \
  | sed 's/[^a-z0-9]+/-/g; s/--*/-/g; s/^-//; s/-$//')
slug="${slug:-untitled}"
filepath="_projects/${slug}.md"

if [ -f "$filepath" ]; then
  echo "error: $filepath already exists"
  exit 1
fi

cat > "$filepath" <<EOF
---
title: "$title"
status: "exploring"
tags: []
order: $next_order
---


EOF

echo "created $filepath"
nvim "$filepath" +5
