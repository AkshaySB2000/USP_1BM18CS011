#!/bin/sh
#Program to accept two filenames and check if their permissions are same or not

if [ $# -eq 2 ]
then
	echo "The entered filenames are Filename1 = $1, Filename2 = $2"
	p1=`ls -l $1 | cut -c 2-10`
	p2=`ls -l $2 | cut -c 2-10`
	if [ $p1 = $p2 ] 
	then 
		echo "The common permissions of $1 and $2 are: $p1"
	else
		echo "The two filenames and their different permissions are:"
		echo "$1 : $p1"
		echo "$2 : $p2"
	fi 
else
	echo "Only 2 arguments must be entered"
fi
