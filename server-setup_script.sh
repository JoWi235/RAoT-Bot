#!/bin/bash

if [ -z "$1" ]; then
  echo "Fehlende Parameter"
  exit 1
fi

./display-setup.sh&

export DISPLAY=:1
sleep 15s
echo "Game started"

xdotool mousemove 272 200 click 1
sleep 2s
echo "Create Host..."

./load-preset.sh "$1" "$2" "$3" "$4"

