#! /bin/bash

for i in {1..5}; do
	echo $i
done

set -x # on whichever point we mention 'set -x', debugging will start from there only

for i in {1..7}; do
	echo $i
	sleep 2
done

# on whichever point we mention 'set +x', debugging will stop