#!/bin/sh
#Program to count number of vowels in a file using tr command

echo "Enter the filename: \c"
read fname
echo `cat $fname`
echo "The number of vowels in $fname = `tr -cd '[AaEeIiOoUu]'<$fname | wc -c`"
	
