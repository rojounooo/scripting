#!/bin/bash 

# Declare an int type
declare -i intVar=123

# Declare a read-only variable. Can't be edited 
declare -r readonlyVar=3.14

# Print types
echo "Int variable"
echo intVar

echo "Read only variable" 
echo readonlyVar 

