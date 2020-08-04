#! /bin/bash
# run the script for better understanding

file_name=File-Handling/file3.txt
trap "rm -rf $file_name; exit" 0 2 15 # either of these signal need to be executed
# deleting a file when signal executes while running the script
# '15' signal is for SIGTERM (termination signal)

echo $$

for i in {1..15}; do
	echo $i
	sleep 4
done