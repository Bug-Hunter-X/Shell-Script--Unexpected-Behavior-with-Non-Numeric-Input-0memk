#!/bin/bash

# Improved script with error handling

total=0
while IFS= read -r number; do
  # Check if the input is a number
  if [[ ! "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Non-numeric input '$number' encountered. Skipping..." >&2
    continue
  fi
  ((total += number))
done < "data.txt"

echo "Total: $total"