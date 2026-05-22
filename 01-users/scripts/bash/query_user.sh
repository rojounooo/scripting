#!/bin/bash

# Parse the arg to a variable 
user="$1" 

# Check if user exists using ID command
if id "$user" &>/dev/null; then 
    echo "User exists" 

else
    echo "User does not exist" 

fi 

# Check if user exists using getent 
if getent passwd "$user" &>/dev/null; then 
    echo "User exists"

else 
    echo "User does not exist"

fi 
