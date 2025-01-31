# Bash Script Race Condition

This repository demonstrates a race condition in a bash script.  Two processes attempt to write to the same files concurrently resulting in data loss or corruption. The solution provides a method for preventing the race condition using file locking.

## Bug Description
The `bug.sh` script showcases a race condition where unpredictable results occur when two processes write to files simultaneously. This can result in partial or missing data.

## Solution
The `bugSolution.sh` script demonstrates how to prevent the race condition using file locking, ensuring data integrity.