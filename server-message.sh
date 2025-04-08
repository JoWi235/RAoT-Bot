#!/bin/bash
export DISPLAY=:1
if [ -z "$1" ] || [ -z "$2" ];then
    echo "Fehlende Parameter: chat/terminal MSG"
    exit 1
fi

if [ "$1" == "chat" ]; then
    xdotool key y
    sleep 2s
    xdotool type "$2"
    sleep 2s
    xdotool key Return
elif [ "$1" == "terminal" ]; then
    xdotool key z
    sleep 2s
    xdotool type "$2"
    sleep 2s
    xdotool key Return
    sleep 2s
    xdotool type z
fi


