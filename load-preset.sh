#!/bin/bash

export DISPLAY=:1

if [ -z "$1" ]; then
  echo "Missing Arguments"
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

if [ -z "$2" ]; then
  echo "Missing Arguments"
  exit 1
else 
    map=$2
fi

xdotool mousemove 256 505 click 1
sleep 2s
echo "Reading presets..."

case $1 in 
    DM)
        xdotool mousemove 440 165
        sleep 2s
        xdotool click 1
        echo "Load Deathmatch..."
        ;;
    TE)
        xdotool mousemove 422 138
        sleep 2s
        xdotool click 1
        echo "Load Team Elimination..."
        ;;
    *)
        echo "Missing or wrong Parrameter"
        exit 1
        ;;
esac

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

case $map in
    castle)
        left
        ;;
    forest)
        right
        ;;
    underground)
        right
        right
        right   
        ;;
    city)
        :
        ;;
    *)
        echo ""
esac

xdotool mousemove 562 488
sleep 2s
xdotool click 1
sleep 30s
echo "Lobby created"
xdotool key Escape
xdotool keydown e
sleep 10s
xdotool keyup e

