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