#!/bin/bash
# Script 1: System Identity Report
# Author: Chahat Garg

STUDENT_NAME="Chahat Garg"
SOFTWARE_CHOICE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date "+%d-%m-%Y %I:%M:%S %p")

if [ -f /etc/os-release ]; then
    DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
else
    DISTRO="Unknown Linux"
fi

OS_LICENSE="Linux kernel is licensed under GPL v2"

echo "=============================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "=============================================="
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $CURRENT_DATE"
echo "OS License      : $OS_LICENSE"
echo "=============================================="