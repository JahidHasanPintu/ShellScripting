#!/bin/bash

# finding odd number from 1 to 100
a=4
b=2
let c=$a%2
echo $c
let a
for ((i=1;i<100;i++))
     temp=$i%2
    echo $temp
    if [ $temp != 0 ]
        then 
            echo $i