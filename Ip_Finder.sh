#!/bin/bash
# Simple ip address finder 
# Created by Md Jahid Hasan Pintu

for url in $(cat site.txt)
do
    # echo "$url IP Adress is :" $(ping -c 2 $url | grep "64 bytes from | awk 'NR == 2' '{print $5}'")
    echo "$url IP Adress is :" $(host $url | grep "has address" | cut -d " " -f4)
done
