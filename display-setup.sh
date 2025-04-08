#!/bin/bash

# Konfiguration
DISPLAY_NUM=":1"
SCREEN_RES="1024x576x24"
XVFB_LOG="/tmp/xvfb.log"
VNC_LOG="/tmp/x11vnc.log"
PROGRAM="/home/jonas-server/Schreibtisch/raotFolder/raot"  # Das Programm hier definieren

echo "[+] Starte virtuelles Display auf $DISPLAY_NUM mit Auflösung $SCREEN_RES"

if ! pgrep -f "Xvfb $DISPLAY_NUM" > /dev/null; then
  Xvfb $DISPLAY_NUM -screen 0 $SCREEN_RES > "$XVFB_LOG" 2>&1 &
  sleep 2
  echo "[+] Xvfb gestartet."
else
  echo "[=] Xvfb läuft bereits."
fi

if ! pgrep -f "x11vnc.*$DISPLAY_NUM" > /dev/null; then
  x11vnc -display $DISPLAY_NUM -nopw -listen localhost -forever > "$VNC_LOG" 2>&1 &
  sleep 2 
  echo "[+] x11vnc gestartet."
else
  echo "[=] x11vnc läuft bereits."
fi

echo "[+] Starte $PROGRAM im virtuellen Display $DISPLAY_NUM"
DISPLAY=$DISPLAY_NUM $PROGRAM &
sleep 5

echo "[✓] Fertig! Verbinde dich mit VNC auf localhost:5900"

