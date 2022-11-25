# Garbage Collector Shell Script (GCSH)
A bash script capable of freeing up your memory by abusing your system's garbage collection mechanic.

## What do you need for this to work?
- A computer running Linux
- A Bash shell
- The Python interpreter

<sup><sub>This script was not verified to work on Windows, and probably will not work on it.</sup></sub>

## What will happen after you run it?
Total system memory usage may drop by up to 50%, memory usage per process may drop by up to 90%.<br>
⚠️ Be aware that the freed up memory may be reclaimed by running applications over time.<br>
⚠️ You will need Python 3 installed in order for this to work.