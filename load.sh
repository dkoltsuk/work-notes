#!/bin/bash 

a=100
while [ $a -gt 1 ];
do
    curl localhost:5000
    sleep 1
    echo $a
    ((a--))
done

echo "Out of the loop"
