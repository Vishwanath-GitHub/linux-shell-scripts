#! /bin/bash

value=1
while [[ $value -le 14 ]]; do
	echo $value
	value=$(( value+1 )) # incrementing operator
done

echo

subject=5
while [[ $subject -le 25 ]]; do
	echo $subject
	(( subject++ )) # incrementing operator
done

echo

num=4
while (( $num <= 12 )); do # using mathematical conditional operators
	echo $num
	(( num++ ))
done