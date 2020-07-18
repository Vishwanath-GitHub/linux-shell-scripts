#! /bin/bash
echo -e "Hello \n there" # '-e' flag is used to interpret characters like '\n','\c' with printing line

echo -e "Enter name of file: \c" # '-c' flag is used to keep the cursor on same line while inputting something
read file_name
if [[ -z $file_name ]]
then
	echo "you entered nothing"
else
	if [[ -e $file_name ]] # '-e' flag is used in 'if' condition while checking for file existence
	then
		echo "file exists"
	else
		echo "file doesn't exist"
	fi
fi

if [[ -f $file_name ]] # '-f' flag is used to check whether file exists and is it a regular file
then
	echo "file is found and is a regular file"
else
	echo "file is not found"
fi

echo -e "Enter name of directory: \c"
read folder_name
if [[ -d $folder_name ]] # '-d' flag checks if folder exists
then
	echo "folder exists"
else
	echo "folder doesn't exist"
fi