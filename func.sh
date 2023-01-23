#!/bin/bash -x

function checkPresent() {
	echo $1
}

ranCheck=$( checkPresent $((RANDOM%2)) )
if [ $ranCheck -eq 1 ]
then
	echo "employee is present"
else
	echo "employee is absent"
fi
