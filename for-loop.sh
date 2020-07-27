#! /bin/bash

echo ${BASH_VERSION}
echo

for i in 1 3 5 6 87; do
	echo $i
done

echo 

# {START..END}
for j in {5..13}; do
	echo $j
done

echo

# {START..END..INCREMENT}
for k in {3..18..3}; do
	echo $k
done

echo

# normal for-loop
for (( i = 0; i < 10; i++ )); do
	echo $i
done

echo

# executing commands inside for-loop
for command in ls pwd date ps; do # 'ps' is for processes currently running
	echo "---------$command---------"
	$command # this will actually execute the command
done

echo

for item in *; do # '*' is taking everything inside current directory
	if [[ -d $item ]]; then # printing directory names
		echo $item
	fi
done

echo

for item in *; do
	if [[ -f $item ]]; then # printing file names
		echo $item
	fi
done