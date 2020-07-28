#! /bin/bash
# function declaration can be done anywhere
# calling the function must be in specific order
function egfunc() {
	echo "hello from vishu"
}

function newfunc() {
	pwd
}

# calling the function
egfunc
newfunc

# functions with parameters
function funcwithpara() {
	# $ values will be equal to function parameters
	echo "parameter given: $1 $2 $3" 
}

funcwithpara vishu hello there

# using for loop with functions
for i in {1..5}; do
	function funcwithfor() {
		echo "called within for loop 5 times"
	}
	funcwithfor
done

echo

# all variables are generally global in shell script
# but it is possible to mention them locally and use these local variables
function funcforvar() {
	value=$2
	echo $value
}

funcforvar first second

# defining local variables within function
function funcforlocal() {
	local name="vishu"
	echo $name
}

name="rishabh"
funcforlocal name # even the variable's value is changed globally, local value is printed
