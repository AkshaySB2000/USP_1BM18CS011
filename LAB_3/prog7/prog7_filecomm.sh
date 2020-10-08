#!/bin/sh
#Program to perform file test and display their attributes after passing two parameters

if [ $# -eq 0 -o $# -eq 1 ]
then
	echo "Wrong number of arguments passed. Only 2 arguments are to be passed"
else
	if [ -f $1 ]
	then
		echo "Since first parameter is a filename, the attributes for file are:"
		ls -l $1
	else
		echo "First parameter is not a filename."
	fi
	if [ -f $2 ]
	then
		echo "Since second parameter is a filename, the attributes for file are:"
		ls -l $2
	else
		echo "Second parameter is not a filename."
	fi
fi
	
	
