#!/bin/bash

for i in 1 2 3 4 5; do 
    echo "Welcome $i times" 
done

declare -i count=1
while [ $count -le 5 ]; do
  echo "Count: $count"
  count=$(( count + 1 ))
done