#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Chahat Garg

echo "Answer the following questions:"

read -p "1. Tool you use daily: " TOOL
read -p "2. What does freedom mean to you? " FREEDOM
read -p "3. What will you build and share? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_chahat.txt"

echo "Open Source Manifesto" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL daily. To me, freedom means $FREEDOM." >> $OUTPUT
echo "I want to build $BUILD and share it with the world." >> $OUTPUT
echo "I believe open source helps everyone grow together." >> $OUTPUT

echo ""
echo "Manifesto saved in $OUTPUT"
cat $OUTPUT