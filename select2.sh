#! /bin/bash
# using 'case' statement in select

select value in MP MH Goa Punjab
do
	case $value in
		MP )
			echo MP state selected;;
		MH )
			echo MH state selected;;
		Goa )
			echo Goa state selected;;
		Punjab )
			echo Punjab state selected;;
		* )
			echo Wrong state selected;;
	esac
done