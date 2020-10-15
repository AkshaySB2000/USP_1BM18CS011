#!/bin/sh
echo "Enter any two integers:"
read a b
sum=`echo $a\+$b|bc`
difference=`echo $a\-$b|bc`
product=`echo $a\*$b|bc`
quotient=`echo $a\/$b|bc`
remainder=`echo $a\%$b|bc`
echo "Sum = $sum"
echo "Difference = $difference"
echo "Product = $product"
echo "Quotient = $quotient"
echo "Remainder = $remainder"
