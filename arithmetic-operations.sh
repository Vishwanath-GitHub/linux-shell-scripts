#! /bin/bash
value1=91
value2=56

echo $((value1+value2))  # adding values
echo $((value1-value2))  # subtracting values
echo $((value1*value2))  # multiplying values
echo $((value1/value2))  # dividing values
echo $((value1%value2))  # modulus operation
echo

# reading from user and performing operation
echo -e "Input value1: \c"
read num1
echo -e "Input value2: \c"
read num2
echo "sum is: $((num1+num2))"
echo

# using 'expr' expression 
# it needs only one bracket per side and add '$' symbol to every variable
echo $(expr $value1 + $value2)  # adding values
echo $(expr $value1 - $value2)  # subtracting values
echo $(expr $value1 \* $value2)  # multiplying values # '\*' symbol needs to be used with 'expr' to perform '*'
echo $(expr $value1 / $value2)  # dividing values
echo $(expr $value1 % $value2)  # modulus operation
echo


# performing arithmetic operations on float (decimal) values
# "bc" stands for basic calculator (its a language in itself)
echo "32.89+51.75" | bc # pipe opertors sends everything mentioned with 'echo' to 'bc' and 'bc' performs calculation
echo "32.89-51.75" | bc
echo "32.89*51.75" | bc
echo "32.89/51.75" | bc # this output will still be in 'int'
echo "scale=5;32.89/51.75" | bc # 'scale' will tell 'bc' to output value with number of decimal places while division
echo "32.89%51.75" | bc
echo

# using variables with 'bc'
value3=96.25
value4=23.48
echo "$value3+$value4" | bc 
echo "$value3-$value4" | bc
echo "$value3*$value4" | bc
echo "scale=5;$value3/$value4" | bc # 'scale' will tell 'bc' to output value with number of decimal places while division
echo "$value3%$value4" | bc
echo

# performing square-root
value5=31
echo "scale=3;sqrt($value5)" | bc -l # '-l' is used for calling math library that contains sqrt() function
echo

# power of values
value6=5
echo "scale=3;($value6)^5" | bc -l