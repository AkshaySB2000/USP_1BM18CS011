#!/bin/sh
#Program to give the largest of three numbers using positional parameters

echo "The numbers entered as command line arguments are : $1 $2 $3"
if [ $1 -gt $2 -a $1 -gt $3 ]
then 
	echo "$1 is the greatest"
elif [ $2 -gt $3 ]
then 
	echo "$2 is the greatest"
else
	echo "$3 is the greatest"
fi

