#!/bin/sh
#Program to show the sign of a number

echo "Enter a number: "
read n
if [ $n -gt 0 ] 
then
	echo "The number is positive"
elif [ $n -lt 0 ] 
then
	echo "The number is negative"
else 
	echo "The number is zero"
fi 
