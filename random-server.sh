#!/bin/bash

export DISPLAY=:1

gameMode=("DM" "TE")
map=("castle" "forest" "underground" "city") #"cave" I removed it due to perfomence issus, but you can add it back in
randomGMIndex=$(($RANDOM%${#gameMode[@]}))
randomMapIndex=$(($RANDOM%${#map[@]}))

nextGameMode=${gameMode[randomGMIndex]}
nextMap=${map[randomMapIndex]}

echo $nextGameMode
echo $nextMap

./server-message.sh chat "The Server will switch in 1 minute to $nextGameMode with the Map $nextMap"

sleep 1m

./server-message.sh terminal endmatch
sleep 5s
./change-game.sh $nextgameMode $nextMap "Test only" "test"
