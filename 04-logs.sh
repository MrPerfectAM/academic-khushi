#!/bin/bash
# Author: Khushi (24BCY10380)
# Purpose: Log File Analyzer
# Suggested log path for Vlc: /var/log/syslog

LOG_FILE="$1"
KEYWORD="$2"

echo "================================================================================"
echo "                   Vlc AUDIT - LOG FILE ANALYZER                "
echo "================================================================================"

count=0
while read -r line; do
    if [[ $line == *$KEYWORD* ]]; then
        ((count++))
    fi
done < "$LOG_FILE"

echo "Total occurrences of '$KEYWORD': $count"

tail -n 5 "$LOG_FILE" | grep $KEYWORD

echo "================================================================================"