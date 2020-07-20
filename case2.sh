#! /bin/bash
# before running this program, enter this command in terminal: LANG=C
# adding patterns in case conditions

echo -e "Enter some value: \c"
read value

case $value in
	[a-z] ) # checking if value is between small a-z alphabets
		echo "between a-z";;
	[A-Z] ) # checking if value is between capital A-Z alphabets
		echo "between A-Z";;
	[0-9] ) # checking if value is between 0-9 digits
		echo "between 0-9";;
	? ) # checking inputted value is special character
		echo "special character";;
	* ) # checking inputted value is multiple character value
		echo "multiple characters"
esac