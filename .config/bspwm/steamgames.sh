#!/bin/sh

steamlib=/games/steam
mygames=$(ls $steamlib/steamapps/appmanifest_*.acf | sed 's/[^0-9]*//g')

for game in $mygames; do
    bspc rule -a steam_app_$game desktop='^4' state=fullscreen
done
