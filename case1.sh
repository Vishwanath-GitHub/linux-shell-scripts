#! /bin/bash

destination=$1 # taking 1st argument in command line
case $destination in
	"bhopal" )
		echo "bhopal is 0 kms away";;
	"yavatmal" )
		echo "yavatmal is 450 kms away";;
	"indore" )
		echo "indore is 200 kms away";;
	* ) # '*' denotes default case
		echo "destination not available"
esac
