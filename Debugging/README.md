set -e # Makes the script to exit immediately on error

set -o pipeline # Sets the exit code the rightmost command in the line (enhancement over -e flag)

set -u # Errors when there is unset variable
