#! /bin/bash
# '$$' is used to get the process ID (PID) of current shell script
# It is dynamic and will change every time the script is executed

# 'trap' is like signal handling. We can output something if it detects some signal.
trap "echo You interruptted the script with Ctrl+C" SIGINT # we can write '2' instead of SIGINT
# script execution will not exit by passing interrupt signal
# 'trap' cannot catch SIGKILL or SIGSTOP signal

echo $$ # whatever PID is returned, this process can be terminated in another shell by: 'kill -9 PID'

for i in {1..10}; do
	echo $i
	sleep 5
done