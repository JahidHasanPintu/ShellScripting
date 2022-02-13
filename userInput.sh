#!/bin/bash
# Taking user input

read -p "Enter First Number: " numb1
read -p "Enter First Number: " numb2
let sum=$(( $numb1 + $numb2 ))

echo "Sum is: $sum"