#!/bin/bash

export DISPLAY=:1

while [ true ] 
do
    sleep 90m #You can change the time if you want
    ./random-server.sh "$3" "$4"
done


