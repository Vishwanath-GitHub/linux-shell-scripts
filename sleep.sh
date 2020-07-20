#! /bin/bash
subject=1
while [[ $subject -le 25 ]]; do
	echo $subject
	(( subject++ ))
	sleep 1 # sleeping for 1 second
done