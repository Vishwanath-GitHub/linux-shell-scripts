#! /bin/bash
score=67

# AND operators
if (( $score > 23 )) && (( $score < 90 )); then
	echo "score is average"
else
	echo "score not accepted"
fi

# its also allowed to remove the middle brackets
if (( $score > 23  &&  $score < 90 )); then
	echo "score is average"
else
	echo "score not accepted"
fi

# '-a' flag used with 'if' condition is equal to AND operator
# using '-a' flag, brackets in the middle can be removed but we need to use just 1 large bracket
# also, we can't use mathematical conditional operators but only normal character conditional operators
if [ "$score" -gt 23 -a "$score" -lt 90 ]
then
	echo "score is average"
else
	echo "score not accepted"
fi


# OR operators
age=55

if (( $score > 18 )) || (( $score < 60 )); then
	echo "age is valid"
else
	echo "age is not valid"
fi

# its also allowed to remove the middle brackets
if (( $age > 18  ||  $age < 60 )); then
	echo "age is valid"
else
	echo "age is not valid"
fi

# '-o' flag used with 'if' condition is equal to OR operator
# using '-o' flag, brackets in the middle can be removed but we need to use just 1 large bracket
# also, we can't use mathematical conditional operators but only normal character conditional operators
if [ "$age" -gt 23 -o "$age" -lt 90 ]
then
	echo "age is valid"
else
	echo "age is not valid"
fi