#!/bin/bash
export DISPLAY=:1
RAOT_PID=$(pgrep raot)

xdotool key Escape
sleep 2s
xdotool mousemove 509 397 click 1
echo "Lobby closed"
sleep 10s

xdotool mousemove 256 509
sleep 2s
echo "Game closed"

pkill -f "Xvfb :1"

sleep 10s
if [ -z "$RAOT_PID" ];then 
    echo "RAOT wurde schon beendet!"
else
    echo "RAoT PID: $RAOT_PID" 
    kill -9 $RAOT_PID
    echo "RAOT wurde beendet"
fi
