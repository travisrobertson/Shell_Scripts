#!/bin/bash

read -p "Enter the filename you would like to commit. :" -n 1 -r && echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
    for i in {1..3}
    do
        echo "$i"
        filename=$(ls -rt file*.txt | head -1)
        echo "$filename"
        filename2=$(echo $filename"_new")
        echo "$filename2"
        mv $filename $filename2
        sleep 1
    done
fi
