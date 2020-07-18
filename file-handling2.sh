#! /bin/bash
# There are two types of files: 
# block files (which are normally images or videos) (used by '-b' flag)
# character files (which contain only texts) (used by '-c' flag)

echo -e "Enter file name: \c"
read file
if [[ -s $file ]] # '-s' checks whether file is of zero size
then
	echo "file is not of zero size" 
else
	echo "file is of zero size"
fi

if [[ -r $file ]] # '-r' flag checks file read permission
then
	echo "file is readable"
fi

if [[ -w $file ]] # '-w' flag checks file write permission
then
	echo "file is writable"
fi

if [[ -x $file ]] # '-x' flag checks file executable permission
then
	echo "file is executable"
fi
