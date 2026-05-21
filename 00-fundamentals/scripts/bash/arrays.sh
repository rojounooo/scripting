#!/bin/bash 

#Creating an array
array=("item1" "item2" "item3")

echo "Length of array is ${#array[@]}"
echo "Array items: ${array[@]}"

newItem="item4"

array+="$newItem"

echo "New length is ${#array[@]}"
echo "New array: ${array[0]}"