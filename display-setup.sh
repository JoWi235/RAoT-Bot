#!/bin/bash

DISPLAY_NUM=":1"
SCREEN_RES="1024x576x24"
XVFB_LOG="/tmp/xvfb.log"
VNC_LOG="/tmp/x11vnc.log"
PROGRAM="/home/jonas-server/Schreibtisch/raotFolder/raot"  #Put here you absulut 

echo "[+] Start virtuell display on screen $DISPLAY_NUM with resolution $SCREEN_RES"

if ! pgrep -f "Xvfb $DISPLAY_NUM" > /dev/null; then
  Xvfb $DISPLAY_NUM -screen 0 $SCREEN_RES > "$XVFB_LOG" 2>&1 &
  sleep 2
  echo "[+] Xvfb started."
else
  echo "[=] Xvfb is already running."
fi

if ! pgrep -f "x11vnc.*$DISPLAY_NUM" > /dev/null; then
  x11vnc -display $DISPLAY_NUM -nopw -listen localhost -forever > "$VNC_LOG" 2>&1 &
  sleep 2 
  echo "[+] x11vnc started."
else
  echo "[=] x11vnc is already running."
fi

echo "[+] Starte $PROGRAM im virtuellen Display $DISPLAY_NUM"
DISPLAY=$DISPLAY_NUM $PROGRAM &
sleep 5

echo "[✓] Finished! Connect to localhost:5900 on VNC"

