#!/bin/bash

# Ensure the script is run as root or with sudo
if [[ "$EUID" -ne 0 ]]; then
  echo "Please run this script as root or with sudo."
  exit 1
fi

echo "Last 5 user login sessions:"
echo "------------------------------------------"

# Show last 5 login sessions with full date and time
# Exclude reboot and shutdown entries
last -n 5 -F | grep -vE "reboot|shutdown"
