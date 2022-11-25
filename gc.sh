#!/bin/bash

# Garbage Collector Shell Script (GCSH)
# A bash script capable of freeing up your memory by abusing your system's garbage collection mechanic.
#
# Total system memory usage may drop by up to 50%, memory usage per process may drop by up to 90%.
# Be aware that the freed up memory may be reclaimed by running applications over time.
#
# You will need Python 3 installed in order for this to work.

# Prompt for confirmation
echo "Running this script will disrupt any active SSH sessions. Continue? (y/n)"
read -s -n1 confirmation
confirmation=${confirmation,,} # case-insensitive
if [ $confirmation = "n" ]; then exit 0; fi;

# Fill up the system memory
echo "Filling up memory to force the system to garbage collect..."
python3 -c "a = bytearray(1024*1024*1000); print(a)" &
pid=$!

# Send a SIGINT to Python to tell the system to garbage collect
sleep 15
kill -2 $pid

# Tell the user the script has finished its job and wait for the system to start garbage collecting
echo "Done. Your SSH session will soon disconnect."
while :; do :; done;