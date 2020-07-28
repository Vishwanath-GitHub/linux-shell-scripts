#! /bin/bash
# using 'readonly' keyword

value=453
readonly value
echo $value
value=89 # changing a value after making it readonly will give an error

# making a function read only
function callthis() {
	echo "hello from function"
}
readonly -f callthis
function callthis() {
	echo "hello from new function"
}
callthis # will execute the original function

echo

# writing just 'readonly' keyword will print the variables that are read only in system
readonly

echo

# writing 'readonly' keyword with '-f' will print readonly functions
readonly -f
