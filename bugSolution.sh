#!/bin/bash

# This script demonstrates a solution to the race condition using flock.

# Create two files
touch file1.txt
touch file2.txt

# Use flock to acquire a lock on each file before writing
(flock -n 200 file1.txt || exit 1; echo "Process 1" > file1.txt) &
(flock -n 200 file2.txt || exit 1; echo "Process 2" > file2.txt) &

# Wait for both processes to finish
wait

# Print the contents of the files
cat file1.txt
cat file2.txt