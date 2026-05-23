#!/bin/bash

set -e

if [ -z "$1" ]; then
    echo "Error: Missing argument. Usage: ./lock_user.sh <username>"
    exit 1
fi

username=$1

# Lock password
sudo usermod -L $username
echo "Locked password for '$username'"

# Expire account
sudo chage -E 0 $username
echo "Expired account for '$username'"

echo "User '$username' has been fully locked out"