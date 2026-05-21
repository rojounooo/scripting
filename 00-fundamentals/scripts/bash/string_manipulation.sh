#!/bin/bash 

read -p "Name: " name 

echo "Hello $name"
echo "Length of name is ${#name}"
echo "Uppercase is ${name^^} "
echo "Lowercase is ${name,,}"

subs="Hello world" 

echo "Hello ${$subs/world/reader}"
