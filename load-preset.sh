#!/bin/bash

export DISPLAY=:1

if [ -z "$1" ]; then
  echo "Fehlende Parameter"
  exit 1
fi

left(){
    xdotool mousemove 440 248 click 1
    sleep 2s
}

right(){
    xdotool mousemove 744 242 click 1
    sleep 2s
}

map=""

if [ -n "$2" ]; then
  map=$2
fi

xdotool mousemove 256 505 click 1
sleep 2s
echo "Reading presets..."

if [ "$1" == "DM" ]; then
    xdotool mousemove 440 165
    sleep 2s
    xdotool click 1
    echo "Load Deathmatch..."
elif [ "$1" == "TE" ]; then
    xdotool mousemove 422 138
    sleep 2s
    xdotool click 1
    echo "Load Team Elimination..."
fi
sleep 2s
xdotool mousemove 573 261
sleep 2s
xdotool click 1

if [ -n "$3" ]; then
    xdotool mousemove 554 152 click 1
    sleep 2s
    xdotool type "$3"
    echo "Lobby Name set to $3"
fi

if [ -n "$4" ]; then
    xdotool mousemove 510 173 click 1
    sleep 2s
    xdotool type "$4"
    echo "Lobby Password set to $4"
fi
sleep 2s
if [ "$map" == "castle" ]; then
    left
elif [ "$map" == "forest" ];then
    right
elif [ "$map" == "cave" ]; then
    right
    right
elif [ "$map" == "underground" ]; then
    right
    right
    right
elif [ "$map" == "city" ]; then
     :
fi

xdotool mousemove 562 488
sleep 2s
xdotool click 1
sleep 30s
echo "Lobby created"
xdotool key Escape
xdotool keydown e
sleep 10s
xdotool keyup e

