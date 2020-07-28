#! /bin/bash
# 'select' is used to generate menus
# It is a infinite menu selection loop. So, to close it, use 'ctrl+C'

PS3="Enter values: " # 'PS3' displays whatever written with it when we echo something in 'select'
# Type numbers mentioned in select menu to get result
select value in MP MH Goa Punjab
do
	echo "$value state selected"
done