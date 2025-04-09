#!/bin/bash

export DISPLAY=:1

if [ -z "$1" ]; then
  echo "Missing Arguments"
  exit 1
fi

xdotool key Escape
sleep 2s
xdotool mousemove 514 272 click 1
sleep 2s
# $1 GameMode $2 MapName $3 LobbyName $4 Pass
./load-preset.sh $1 "$2" "$3" "$4"

