#! /bin/bash
# when this script is running, open another terminal and write: 'kill -9 PID'

echo $$ # getting process ID

for i in {1..10}; do
	echo $i
	sleep 5
done
