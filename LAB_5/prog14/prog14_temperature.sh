#!/bin/sh
#Program to convert temperature from fahrenheit to celsius

echo "Enter the temperature in fahrenheit: \c"
read t
a=`expr $t - 32`
t=`expr $a \* 5 / 9` 
echo "The temperature in degree celsius: $t"

