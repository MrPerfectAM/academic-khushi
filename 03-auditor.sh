#!/bin/bash
# Author: Khushi (24BCY10380)
# Purpose: Disk and Permission Auditor

dirs=(/etc /var/log /usr/bin /usr/lib /home)
dirs+=(/usr/lib/vlc /var/lib/vlc)

echo "================================================================================"
echo "                   Vlc AUDIT - DIRECTORY AUDITOR                "
echo "================================================================================"
for dir in "${dirs[@]}"; do
    if [ -d "$dir" ]; then
        echo -n "$dir:"
        echo -n " Size: $(du -sh $dir | awk '{print $1}')"
        echo -n " Permissions: $(stat -c %a $dir)"
        echo -n " Owner: $(stat -c %U:%G $dir)"
        echo
    else
        echo "$dir does not exist"
    fi
done

echo "================================================================================"