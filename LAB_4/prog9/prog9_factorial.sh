#!/bin/sh
#Program to give the factorial of a number using looping construct

echo "Enter a number: \c"
read n
num=n
fact=1
while [ $n -gt 1 ]
do
	fact=`echo $fact\*$n|bc`
	n=`echo $n-1|bc`
done
echo "The factorial = $fact" 
	
