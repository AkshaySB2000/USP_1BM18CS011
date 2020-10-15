#!/bin/sh
#Program to find sum of even numbers upto a given number n

echo "Enter the value of n: \c"
read n
i=2
sum=0
while [ $i -le $n ]
do
	sum=`echo $sum+$i|bc`
	i=`echo $i+2|bc`
done
echo "Sum of even numbers upto $n = $sum"
