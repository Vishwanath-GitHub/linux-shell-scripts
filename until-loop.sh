#! /bin/bash
# everything mentioned inside until loop executes when the condition is false

value=1
until [[ $value -ge 15 ]]; do
	echo $value
	(( value++ ))
done