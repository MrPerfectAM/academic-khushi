#!/bin/bash
# Author: Khushi (24BCY10380)
# Purpose: FOSS Package Inspector

# Detect Linux distribution to determine package manager
if [ -x "$(command -v apt)" ]; then
    PACKAGE_MANAGER="apt"
    PACKAGE_NAME="vlc"
elif [ -x "$(command -v yum)" ]; then
    PACKAGE_MANAGER="yum"
    PACKAGE_NAME="vlc"
elif [ -x "$(command -v zypper)" ]; then
    PACKAGE_MANAGER="zypper"
    PACKAGE_NAME="vlc"
else
    echo "Unsupported package manager"
    exit 1
fi

# Check if Vlc is installed
if $PACKAGE_MANAGER list --installed | grep -q $PACKAGE_NAME; then
    echo "================================================================================"
    echo "                   Vlc AUDIT - PACKAGE INSPECTOR                "
    echo "================================================================================"
    echo "Status: $PACKAGE_NAME is INSTALLED on this system."
    echo "Version: $($PACKAGE_MANAGER list --installed | grep $PACKAGE_NAME | awk '{print $2}')"
    echo "--------------------------------------------------------------------------------"
    echo "FOSS Philosophy Notes:"
    echo " - Vlc: A free and open-source media player that promotes the principles of software freedom"
    echo " - Firefox: A free and open-source web browser that advocates for a free and open internet"
    echo " - LibreOffice: A free and open-source office suite that supports the values of open-source software"
    echo " - GIMP: A free and open-source raster graphics editor that demonstrates the power of community-driven development"
    echo "================================================================================"
else
    echo "$PACKAGE_NAME is not installed"
fi