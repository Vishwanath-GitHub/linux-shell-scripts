#! /bin/bash
# reading file with while loop

while read content # 'content' variable will store the contents of file
do
	echo $content
done < file2.txt # contents of file2.txt will be redirected to while loop

echo

echo -e "Enter file which you want to read: \c"
read value
while read mycontent
do
	echo $mycontent
done < $value

echo

# using pipe operator and 'cat' command
cat file1.txt | while read new_content; do
	echo $new_content
done

echo

# 'IFS' is internal field seperator. It is used when file contains some characters that can't be read normally.
# we are assigning space as value of IFS
while IFS= read -r line # '-r' flag prevents backslash escape from being interpreted 
do
	echo $line
done < file1.txt