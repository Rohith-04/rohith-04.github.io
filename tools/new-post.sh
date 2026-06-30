#!/usr/bin/env bash
set -euo pipefail

if [ $# -eq 0 ]; then
  echo "usage: $0 \"post title\""
  exit 1
fi

title="$*"
today=$(date +%Y-%m-%d)
# lowercase, replace spaces with hyphens, strip non-alphanumeric except hyphens
slug=$(echo "$title" \
  | tr '[:upper:]' '[:lower:]' \
  | sed 's/ /-/g; s/[^a-z0-9-]//g; s/--*/-/g; s/^-//; s/-$//')
filename="${today}-${slug}.md"
filepath="_posts/$filename"

if [ -f "$filepath" ]; then
  echo "error: $filepath already exists"
  exit 1
fi

cat > "$filepath" <<EOF
---
layout: post
title: "$title"
date: $today
tags: []
projects: []
excerpt: ""
---


EOF

echo "created $filepath"
nvim "$filepath" +7
