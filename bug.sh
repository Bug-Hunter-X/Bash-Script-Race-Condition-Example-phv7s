#!/bin/bash

# This script demonstrates a race condition that can lead to unexpected behavior.

# Create two files
touch file1.txt
touch file2.txt

# Start two processes simultaneously that write to the files
(echo "Process 1" > file1.txt) &
(echo "Process 2" > file2.txt) &

# Wait for both processes to finish
wait

# Print the contents of the files. The output may be unexpected or incomplete
cat file1.txt
cat file2.txt