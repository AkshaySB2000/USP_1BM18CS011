#!/bin/sh
#Program to perform arithmetic operations using case expression.

echo "Enter the operands: \c"
read a b
echo "Enter the operation to be performed (+,-,*,/,%): \c";
read op
case $op in
	"+") sum=`expr $a + $b`
	     echo "The sum = $sum"
	     ;;
	"-") diff=`expr $a - $b`
	     echo "The difference = $diff"
	     ;;
	"*") prod=`expr $a \* $b`
	     echo "The product = $prod"
	     ;;
	"/") quot=`expr $a / $b`
	     echo "The quotient = $quot"
	     ;;
	"%") rem=`expr $a % $b`
	     echo "The remainder = $rem"
	     ;;
	*) echo "Invalid Choice"
	   ;;
esac
