#! /bin/bash
# if-else

value1=10
if [[ $value1 -eq 10 ]]; then # '-eq' = equal to
	echo "value guaranteed"
fi

value2=20
if [[ $value2 -ne 10 ]]; then # '-ne' = not equal to
	echo "value not 10"
fi

value3=20
if [[ $value3 -gt 10 ]]; then # '-gt' = greater than
	echo "value greater than 10"
fi

value4=89
if [[ $value4 -ge 89 ]]; then # '-ge' = greater than or equal to
	echo "value greater than or equal to 89"
fi

value5=9
if [[ $value5 -lt 10 ]]; then # '-lt' = lesser than
	echo "value lesser than 10"
fi

value6=28
if [[ $value6 -le 28 ]]; then # '-le' = lesser than or equal to
	echo "value lesser than or equal to 28"
fi

# if we want to use conditional operators, we must use (()) instead of [[]]
value7=76
if (( $value7 > 50 )); then
	echo "value greater than 50"
fi

value8=63
if (( $value8 >= 76 )); then
	echo "value greater than or equal to 63"
fi

value9=76
if (( $value9 < 90 )); then
	echo "value lesser than 90"
fi

value10=63
if (( $value10 <= 63 )); then
	echo "value lesser than or equal to 63"
fi

# string comparison
value11="hello"
if [[ $value11 = "hello" ]]; then
	echo "string equal"
fi

value12="hello"
if [[ $value11 == "hello" ]]; then # '=' is equal to '=='
	echo "string equal"
fi

value13="there"
if [[ $value13 != "hello" ]]; then
	echo "string not equal"
fi

value14="h"
if [[ $value14 < "i" ]]; then # '<' in strings checks if given character is alphabetically smaller than the other
	echo "entered character is smaller" 
fi

value15="i"
if [[ $value15 > "f" ]]; then # '>' in strings checks if given character is alphabetically greater than the other
	echo "entered character is greater" 
fi

value16=""
if [[ -z $value16 ]]; then # '-z' checks if string is empty
	echo "string is empty"
fi

value17=587
if (( $value17 > 989 )); then
	echo "value is greater"
else
	echo "value is smaller"
fi

value18=989
if (( $value18 > 1000 )); then
	echo "greater than 65"
elif (( $value18 > 151 )); then
	echo "greater than 151"
else
	echo "not applicable"
fi