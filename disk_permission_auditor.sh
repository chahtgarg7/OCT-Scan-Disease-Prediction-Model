#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Chahat Garg

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

CONFIG_DIR="/usr/bin/python3"

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Owner: $OWNER | Group: $GROUP | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking Python binary:"

if [ -f "$CONFIG_DIR" ]; then
    ls -l "$CONFIG_DIR"
else
    echo "Python binary not found"
fi