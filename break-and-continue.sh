#! /bin/bash
# using 'break' statememt

for (( i = 0; i < 5; i++ )); do
	if (( $i > 3 )); then
		break # coming out of loop
	fi
	echo $i
done

echo

for (( i = 0; i < 10; i++ )); do
	if (( $i%2==0 )); then
		continue # will not execute when 'if' condition is true
	fi
	echo $i # printing odd numbers
done