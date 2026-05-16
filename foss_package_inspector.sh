#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Chahat Garg

PACKAGE="python3"

echo "Checking package: $PACKAGE"

if command -v dpkg >/dev/null 2>&1; then
    if dpkg -s "$PACKAGE" >/dev/null 2>&1; then
        echo "$PACKAGE is installed."
        dpkg -s "$PACKAGE" | grep -E 'Package:|Version:|Description:'
    else
        echo "$PACKAGE is NOT installed."
    fi
else
    echo "Package manager not supported."
fi

echo ""
echo "Philosophy note:"

case "$PACKAGE" in
    python3)
        echo "Python: a powerful open-source language built for simplicity and community collaboration."
        ;;
    *)
        echo "Open-source software promotes freedom and sharing."
        ;;
esac