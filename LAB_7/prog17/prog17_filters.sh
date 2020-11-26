#!/bin/sh
#Program to concatenate lines of two files into a new file using head and tail filters

echo "Enter the name of first file: \c"
read f1
echo "Enter the name of second file: \c"
read f2
echo "Enter the new filename: \c"
read f3
rm -f $f3
cat $f1 | head -5 >>$f3
cat $f2 | head -15 | tail -8 >>$f3
echo "The contents of the new file are: "
for line in `cat $f3`
do
	echo "$line"
done

