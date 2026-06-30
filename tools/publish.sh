#!/usr/bin/env bash
set -euo pipefail

git add -A

if [ $# -eq 0 ]; then
  git commit -m "update site"
else
  git commit -m "$*"
fi

git push

echo "published!"
