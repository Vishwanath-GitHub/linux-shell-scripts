#! /bin/bash

value=1
while [[ $value -lt 4 ]]; do
	(( value++ ))
	gnome-terminal &
	# 3 terminals will be opened 
done

# '&' written after 'gnome-terminal' is the shell's backgrounding operator, meaning that it places the command preceeding it in the background
# and continues to the one after otherwise you'll have to wait for the current command to finish executing and then continue to the next command