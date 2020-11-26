#!/bin/sh
#Program to accept valid login names as arguments and print their corresponding home directories using grep command

if [ $# -eq 0 ]
then
	echo "No command line arguments given"
else
	for name in $*
	do
		lname=`grep "$name" /etc/passwd | cut -d ":" -f 1`
		if [ -n $lname ]
		then
			if [ "$lname" = "$name" ]
			then
				dir=`grep "$name" /etc/passwd | cut -d ":" -f 6`
				echo $dir
			else
				echo "Invalid login-name: $name"
			fi
		fi
	done
fi

