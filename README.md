# RAoT-Bot
This is a Bot to Host a Server in the game RAot.
Right now it only works on Linux. I scripted it on Mint 22.1.
My plan is to devlop either a VM version or a Docer-container.
To have the project working you need to have installed:
1. RAoT -> https://roarkdev.itch.io/raot
2. xdotool
3. Xvfb
4. x11vnc
5. a software to view the VD(Virtuell Display), i used Remmina

Before you can host an server you will need to add the presets to the game. You can add presets in the
Host menu->Lobby Presets->Opnen Folder. If you already have presets please make sure, that the TeamEli2 
preset is at the first and the DM at the third place. I dont know, how the game mangages or sorts the presets,
but if there are not in the correct order it won´t work. In the project folder, in the display-setup.sh script
you will need to change the absolute path to your RAoT location.

To setup a server you have to run the server-setup.sh.You maybe have to do the "chmod +x" command to all the .sh scripts to make them a runable Programm.
You have to add at least 2 arguemnts.
First is the game mode. Right now you have the option between DM(Deathmatch) or TE(Team Elimination).
DM has infinite gas, but not infinite ammo.
TE has neither.
The secound argument is the map. You have to choose between city, castle, forest, underground and cave.
So to host a Lobby without a eddited name or an password you type in the terminal and in the folder:
"./server-setup.sh DM city"

