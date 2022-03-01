#!/bin/bash

# arr=(10 8 20 100 12)
# Taking User input 
declare -a arr
echo "Enter size of array: "
read number
echo "enter $number numbers: "

for(( c = 0 ; c < $number ; c++))
do
  read abc_elements
  arr[$c]="$abc_elements"
done

# printing the array 
echo "Array in original order"
echo ${arr[*]}

# Performing Bubble sort 
for ((i = 0; i<5; i++))
do
    
    for((j = 0; j<5-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

# echo "Array in sorted order :"
# echo ${arr[*]}

echo "Second Largest = ${arr[number-2]}"
echo "Third Largest = ${arr[number-3]}"