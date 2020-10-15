#!/bin/sh
#Program to find the power of a number using looping construct

echo "Enter a number and the power to which it has to be raised: "
read x y
i=1
pow=$x
while [ $i -lt $y ]
do
	pow=`echo $pow\*$x|bc`
	i=`echo $i+1|bc`
done
echo "The value of $x ^ $y = $pow"
