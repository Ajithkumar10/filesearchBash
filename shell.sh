#!/bin/bash

# Set the root directory to start the search from
root_dir="/Users/aj/Desktop"

# Set the string to search for
read -p "Please enter the search string" string

# Find all the files containing the string and store the file paths in a variable
files=$(find "$root_dir" -type f -exec grep -l "$string" {} \;)

# Iterate over the file paths and print them
for file in $files; do
  echo $file
done

