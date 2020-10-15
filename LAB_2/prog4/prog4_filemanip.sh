#!/bin/sh
echo "Enter the first file name: \c"
read fname
echo "Attributes of file 1: "
ls -l $fname
echo "Contents of file 1: "
cat $fname
echo "Number of words in file 1: "
wc -w $fname
echo "Enter the second file name: \c"
read fname2
echo "Contents of file 2 before copy operation: "
cat $fname2
cp $fname $fname2
echo "Contents of file 2 after copy operation: "
cat $fname2
mv $fname $fname2
echo "Contents of file 1 after renaming: "
cat $fname
echo "Contents of file 2 after renaming: "
cat $fname2

