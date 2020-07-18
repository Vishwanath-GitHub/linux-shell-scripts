#! /bin/bash
# We can give command line arguments when running/executing the script
echo $1 $2 $3 # $1 $2 $3 will consecutively hold whatever is given in command line while running the script
echo $0 # $0 will hold the first value given i.e. the command given to execute the script

# However, we can store the arguments given an array
arguments=("$@") # '$@' is the default system variable that stores the given arguments in an array
echo ${arguments[0]}, ${arguments[1]}, ${arguments[2]}
# unlike default storing variables (like $1), the arguments array will store the arguments from 0th position

# however, if we don't want to use an array to store default values from '$@', we can directly echo them
echo $@ # will print all the arguments given with command

# use '$#' to get number of arguments passed with command
echo $#