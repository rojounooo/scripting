#!/bin/bash 

# Define the function 
say_hello() {
    echo "Hello" 
}

# Define a function with parameters
# Local keeps the variable within the function only rather than a global function

greet() {
    local name=$1
    echo "Hello, $name!"
}

say_hello

greet "Radwan"