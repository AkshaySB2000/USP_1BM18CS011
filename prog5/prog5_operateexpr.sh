#!/bin/sh
echo "Enter two numbers: "
read a b
sum=`expr $a + $b`
echo "Sum: $sum"
difference=`expr $a - $b`
echo "Difference: $difference"
product=`expr $a \* $b`
echo "Product: $product"
quotient=`expr $a \/ $b`
echo "Quotient: $quotient"

