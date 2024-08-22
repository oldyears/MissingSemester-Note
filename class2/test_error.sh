#!/usr/bin/env bash

echo "Starting program at $(date)"
echo "input shell is $1, next we will run it until wrong shows..."

# first run
./$1 >> correct.txt
num=0

while [[ $? -eq 0 ]];
do 
    # repeat run
    # let num+=1
    (( num++ ))
    ./$1 >> correct.txt 2> error.txt
done
echo "the program has run for $num times rightly"

