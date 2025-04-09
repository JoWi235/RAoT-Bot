#!/bin/bash

# Hole die aktuelle Mausposition (x, y)
export DISPLAY=:0
eval $(xdotool getmouselocation --shell)

# Ausgabe der x- und y-Koordinaten
echo "Mausposition: X=$X, Y=$Y"
