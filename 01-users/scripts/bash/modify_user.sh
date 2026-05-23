#!/bin/bash

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Error: Missing arguments. Usage: ./modify_user.sh <old_username> <new_username>"
    exit 1
fi

oldUsername=$1
newUsername=$2

sudo usermod -l $newUsername $oldUsername
sudo usermod -d /home/$newUsername -m $oldUsername

echo "Username changed from '$oldUsername' to '$newUsername'"
echo "Home directory moved to /home/$newUsername"