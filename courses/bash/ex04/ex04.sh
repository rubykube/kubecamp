#!/bin/bash

echo "Searching for pattern: $1"

if [ -z "$1" ]; then
    echo "Usage: $0 pattern"
    exit 1
fi

pattern="$1"

find . -type f | while read -r file; do
    echo "Checking file: $file"
    grep -nH "$pattern" "$file" 2>/dev/null
done
