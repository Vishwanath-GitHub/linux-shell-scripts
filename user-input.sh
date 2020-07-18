#! /bin/bash

echo "Enter your favourite number: "
read number # when 'read' runs, it stops for user input
# 'number' variable will store the input from user
echo "Your favourite number is: $number"

# Getting multiple inputs
echo "Enter multiple city names: "
read city1 city2 city3 # input must be given with spaces
# don't press enter while giving input
echo "Your entered cities are: $city1, $city2, $city3"

# Getting multiple inputs on same line
# Don't use '-' symbol in any variable
read -p 'what is your name: ' username_var 
# start with 'read' command and use '-p' flag which will allow user to input values in same line
echo "Your name is: $username_var"

# Hiding the values entered in user input (for entering passwords)
read -p 'type your username: ' user1
read -sp 'type your password: ' pass # '-sp' will not show whatever is being typed
echo # 'echo' with nothing provided returns a blank line
echo "Your username is: $user1"
echo "Your password is: $pass"