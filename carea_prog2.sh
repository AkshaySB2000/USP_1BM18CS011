#!/bin/sh
echo "Enter the radius: "
read r
area=`echo 3.1415 \* $r\* $r|bc`
echo "Area of the circle is: $area"
