#!/bin/bash 

# Exit on error
set -e

# Check username arg 
if [ -z "$1" ]; then    
    echo "Username argument missing" 
    exit 1 
fi 

# Parse username and password
username=$1 
password=$(openssl rand -base64 12)

# Create the user with a home directory 
sudo useradd -m -s /bin/bash "$username"

# Set temporary password 
echo "$username:$password" | sudo chpasswd

sudo chage -d 0 "$username"

echo "$username has been created"
echo "Temporary password: $password" 
echo "User will be prompted to change password at first login" 

