#!/bin/bash

echo "How many digit in your number?"
read size
echo "enter $size digit number"
read number
n=1
for((j = 0; j<$size; j++))
do
a=`echo $number | cut -c $n`
echo -n "$a "
n=`expr $n + 2`
done
echo " "