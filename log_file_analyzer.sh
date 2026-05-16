#!/bin/bash
# Script 4: Log File Analyzer
# Author: Chahat Garg

LOGFILE=$1
KEYWORD=${2:-error}
COUNT=0

if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 logfile [keyword]"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "File not found!"
    exit 1
fi

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times."

echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5