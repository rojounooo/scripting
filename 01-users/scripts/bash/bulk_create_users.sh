#!/bin/bash

set -e

if [ -z "$1" ]; then
    echo "Error: Missing argument. Usage: ./bulk_create_users.sh <csv_file_path>"
    exit 1
fi

csvFile=$1

if [ ! -f "$csvFile" ]; then
    echo "Error: File '$csvFile' not found"
    exit 1
fi

touch credentials.txt

while IFS=, read -r name; do
    username="$name"
    password=$(openssl rand -base64 12)

    sudo useradd -m -s /bin/bash "$username"
    echo "$username:$password" | sudo chpasswd
    sudo chage -d 0 "$username"

    echo "$username has been created"
    echo "Username: '$username' - Password: '$password'" >> credentials.txt

done < <(tail -n +2 "$csvFile")

echo "Bulk user creation complete. Credentials saved to credentials.txt"