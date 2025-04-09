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
you will need to change the absolute path to your RAoT location. Moreover you will need to change the ingame chat to the key "y" and the game terminal to th key "z".
You also could change them in the script if you want, but no key combinations. Either you change them ingame or in the script server-message.sh.

To setup a server you have to run the server-setup.sh.You maybe have to do the "chmod +x" command to all the .sh scripts to make them a runable Programm.
You have to add at least 2 arguemnts.
First is the game mode. Right now you have the option between DM(Deathmatch) or TE(Team Elimination).
DM has infinite gas, but not infinite ammo.
TE has neither.
The secound argument is the map. You have to choose between city, castle, forest, underground and cave.
So to host a Lobby without a eddited name or an password you type in the terminal and in the folder:
(./server-setup.sh DM city)
You have 4 agrugemts available. The 3 is the Lobby name, wich you have to wirte in those(""). The 4 is the Lobby password, wich you also have to type in those(""). An example is:
(./server-setup.sh DM city "Test" "test")
You can also only put a Lobby name, but if you want to put a password to the Lobby, you will need to put a new name.

Now is a overlook over all the scripts and their needed and (optional) agruments(all script are started by ./scriptname.sh). I will put DM as game mode, city as map, (Test) as an optional name and (test) as an optional password.
All the "()" are not part of the actual command so remove them in your command. All the scripts i list can be used, while the others are just there to make it work:

- server-setup.sh DM city ("Test") ("test")
- server-close.sh
- change-game.sh DM city ("Test") ("test")
- random-server.sh ("Test") ("test")
- automated-server.sh ("Test") ("test")
- server-message.sh chat/terminal "MSG" (you have to write either chat or terminal and you replace the MSG to your message. Ingame command work over the terminal adn the in the message the command.)






