#!/bin/bash
###
###     Auto Installer of free Homebrew ROMS for Retropie/Emulationstation!
###     !LEGALLY!
###     Accepted File Extensions: .zip .smc .sfc .fig .swc
###
clear
echo " "
echo " ======================================================================="
echo " Welcome to Games Auto Installer for RetroPie (Emulationstation)!"
echo " This package contains only free -> LEGAL GAMES!"
echo " Copyright goes to the owner of the particular game."
echo " Last update: 11th October 2018"
echo " "
echo " #######################################################################"
echo " WARNING!! This installer will remove existing ROMs & GAMELISTS!"
echo " #######################################################################"
echo " "
echo " List of all Homebrew games, which will be installed for SNES"
echo " can be found on: https://github.com/retrobrews/snes-games"

echo " "
echo " Please wait until end of installation."
echo " Emulation station will be started automatically at the end."
echo " ======================================================================="
echo " "
read -n 1 -s -p "Press any key to continue...     OR Ctrl+C to stop operation"
echo " "
clear


echo " "
echo " ======================================================================="
echo " Downloading and Extracting Games to ROM directory, please wait..."
echo " ======================================================================="
echo " "
sleep 2


cd /home/pi/RetroPie/roms
if [ ! -d "snes" ]; then
mkdir snes
fi
cd snes
###CLEAN EVERYTHING!
rm -rf *.*


### GAMES
wget --no-check-certificate -q -O master.zip 'https://codeload.github.com/retrobrews/snes-games/zip/master'
unzip master.zip
mv -v snes-games-master/* /home/pi/RetroPie/roms/snes > /dev/null
rm -rf snes-games-master
rm *.zip
clear

echo " "
echo " ======================================================================="
echo " Downloading and Extracting Games to ROM directory, please wait..."
echo " ======================================================================="
echo " "
echo "  DOWNLOAD AND EXTRACT... done."
sleep 2

echo " "
echo " ======================================================================="
echo " Updating gamelist for Super Nintendo Entertainment System"
echo " ======================================================================="
echo " "
sleep 2
cd ~
cd /home/pi/.emulationstation/gamelists/
if [ ! -d "snes" ]; then
mkdir snes
fi
cd snes
###CLEAN EVERYTHING!
rm -rf *.*
mv /home/pi/RetroPie/roms/snes/gamelist.xml /home/pi/.emulationstation/gamelists/snes > /dev/null
sleep 2

cd /home/pi
rm snes-roms.sh
clear
echo " "
echo " ======================================================================="
echo " Updating gamelist for Super Nintendo Entertainment System"
echo " ======================================================================="
echo " "
echo "  GAMELIST UPDATE ... done."
sleep 2
clear

echo " "
echo " ======================================================================="
echo " Installation is Complete..."
echo " ======================================================================="
echo " "
echo " "
echo " This script was not written by developers of RetroPie, Emulationstation"
echo " or any Homebrew/Free game"
echo " "
echo " For further support on this script please email to: "
echo " retrobrews {CAT} gmail {DOG} com"
echo " ======================================================================="
echo " BIG THANKS GOING to: "
echo " various sources over the internet for the awesome games & covers!!"
echo " ======================================================================="
echo " "
echo " Enjoy the new games. Now script will run Emulationstation, please wait."
echo " "
echo " "
sleep 15
emulationstation