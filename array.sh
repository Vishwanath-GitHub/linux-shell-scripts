#! /bin/bash
# bash supports one dimensional array

array=('ubuntu' 'windows' 'temple' 'android' 'iOS')
echo "${array[0]},${array[3]}" #printing array's 1st and 4th elements
echo "${array[@]}" # printing entire array
echo "${!array[@]}" # printing indices of all elements of array
echo "${#array[@]}" # printing length of array

# adding elements to array
array[5]='JVM'
echo "${array[@]}"

# replacing element in array
array[3]='HP'
echo "${array[@]}"

# removing element from array
unset array[0]
echo "${array[@]}"


# using string as an array
string=fdbvisonvlbeandksmv
echo "${string[@]}"
echo "${string[0]}"
# however, the value of string is actually entirely 1st element of array
# so we can't print further values after 1st element
echo "${string[5]}" # this will not print
echo "${#string[@]}" # showing that length of array is 1