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