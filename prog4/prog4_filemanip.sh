#!/bin/sh
echo "Enter the first file name: \c"
read fname
ls -l $fname
cat $fname
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

