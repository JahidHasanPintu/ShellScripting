#!/bin/bash

function add()
{
    sum=$(($1 + $2))
    echo "Sum = $sum"
}
echo -n "Enter two number: "
read number1 number2

add $number1 $number2