#!/bin/bash

if [ -z "$1" ]; then
  echo "Missing Arguments"
  exit 1
fi

./display-setup.sh&

export DISPLAY=:1
sleep 15s
echo "Game started"

sleep 15s
xdotool mousemove 506 360 #this is, when you get the Erro "invlid Ip adress"
sleep 2s
xdotool mousemove 514 426 #other problem

xdotool mousemove 272 200 click 1
sleep 2s
echo "Create Host..."

./load-preset.sh "$1" "$2" "$3" "$4"

