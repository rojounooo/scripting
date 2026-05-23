#!/bin/bash

set -e

if [ -z "$1" ]; then
    echo "Error: Missing argument. Usage: ./unlock_user.sh <username>"
    exit 1
fi

username=$1

# Unlock password
sudo usermod -U $username
echo "Unlocked password for '$username'"

# Remove expiry
sudo chage -E -1 $username
echo "Expiry removed for '$username'"

echo "User '$username' has been fully unlocked"