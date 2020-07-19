#! /bin/bash
# Appending text to a file
echo -e "What is the name of file for appending: \c"
read file_name

if [[ -f $file_name ]]; then # checking file existence
	if [[ -w $file_name ]]; then # checking write permission
		echo "type what you want when cursor appears. press ctrl+D to exit"
		cat >> $file_name # '>>' operator is used for appending
	else
		echo "file doesn't have permission to write"
	fi
else
	echo "file doesn't exist"
fi

# Overwriting text to a file
echo -e "What is the name of file for overwriting: \c"
read file_name

if [[ -f $file_name ]]; then # checking file existence
	if [[ -w $file_name ]]; then # checking write permission
		echo "type what you want when cursor appears. press ctrl+D to exit"
		cat > $file_name # '>' operator is used for appending
	else
		echo "file doesn't have permission to write"
	fi
else
	echo "file doesn't exist"
fi