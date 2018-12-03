#!/bin/bash

i=1;
foo=""


if [ -z "$1" ]
then
	echo "No argument passed"
	exit 1
fi
if [ -z "$2" ]
then
        echo "No seccond argument passed"
	exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]]
    then
        echo "Not an integer"
	exit 1
fi

if [ $1 -gt 0 ]
then
	while [[ $i -le $1 ]]
	do foo="$foo $2" 
	((i++))	
	done

fi
echo $foo


