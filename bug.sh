#!/bin/bash

# This script attempts to process a file, but it has a subtle error that can lead to unexpected behavior.

# The file 'data.txt' contains some numerical data:
# 10
# 20
# 30

# The script attempts to sum the numbers in 'data.txt'
total=0
while IFS= read -r number; do
  ((total += number))
done < "data.txt"

echo "Total: $total"