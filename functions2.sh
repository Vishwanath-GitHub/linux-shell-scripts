#! /bin/bash
# there is no need to write 'function' keyword while declaring & defining function
# function for file existence

usage() {
	echo "you need to provide an argument: "
	echo "usage: $0 file-name"
}

does_file_exist() {
	local file=$1
	# there is also no need to mention 'if' when using conditions
	# '&&' can be used for 'then' statement and '||' can be used for 'else' statement
	[[ -f $file ]] && return 0 || return 1
}

[[ $# -eq 0 ]] && usage

if ( does_file_exist $1 ); then
	echo "file found"
else
	echo "file not found"
fi