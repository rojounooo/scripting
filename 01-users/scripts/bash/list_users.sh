#!/bin/bash 

set -e 

echo "Listing all users" 
getent passwd | awk -F: '$3 >= 1000 && $3 <= 60000' | cut -d: -f1