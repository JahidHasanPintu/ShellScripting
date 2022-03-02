#!/bin/bash

# function for calculating factorial 
function factorial()
{
factorial=1
for(( i=1; i<=$1; i++ ))
do
  factorial=$[ $factorial * $i ]
done
echo "The factorial of $1 is $factorial"

}
# Adding two number Using Function 
function add()
{
    sum=$(($1 + $2))
    echo "Sum = $sum"
}

echo -n "Enter two number: "
read number1 number2
#  function calling 
add $number1 $number2
factorial $number1
factorial $number2





