#!/bin/sh
#Program to check whether a file is a directory or an ordinary file

echo "The command line argument entered is: $1"
if [ -f $1 ]
then
	echo "The argument entered is a filename. The attributes are: "
	ls -l $1
elif [ -d $1 ]
then 
	echo "The argument entered is a directory. The attributes are: "
	ls -l $1
else
	echo "The argument entered is neither a file nor a directory"
fi

