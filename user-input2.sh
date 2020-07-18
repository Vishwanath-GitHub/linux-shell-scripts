#! /bin/bash
echo "Enter city names for array: "
read -a city_names # '-a' flag is used to read inputs in an array
echo $city_names # printing just variable name of array will print the 1st element of array
echo "You entered: ${city_names[0]}, ${city_names[1]}" # printing individual values of array

# using no variable for taking user input
echo "Your name: "
read # 'read' command with no variable saves the input in a custom variable
echo "Name is: $REPLY" # REPLY is the default system variable that saves the input from user 