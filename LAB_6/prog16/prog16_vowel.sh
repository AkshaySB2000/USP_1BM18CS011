#!/bin/sh
#Program to check whether a character is a vowel or not.

echo "Enter a character: \c"
read ch
case $ch in
	'a') echo "It is a vowel";;
	'e') echo "It is a vowel";;
	'i') echo "It is a vowel";;
	'o') echo "It is a vowel";;
	'u') echo "It is a vowel";;
	'A') echo "It is a vowel";;
	'E') echo "It is a vowel";;
	'I') echo "It is a vowel";;
	'O') echo "It is a vowel";;
	'U') echo "It is a vowel";;
	*) echo "It is not a vowel";;
esac
