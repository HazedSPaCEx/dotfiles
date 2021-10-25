#!/bin/sh

gnome-screenshot -a -p -f /tmp/image.png

if [ -e /tmp/image.png ]
then
    curl -X POST https://carbon.pics/upload -H "Authorization: $(cat ~/.secrets/carbon.pics)" -F upload="@/tmp/image.png" | python3 -c "import sys, json; print(json.load(sys.stdin)['url'])" | xclip -i -selection clipboard
    notify-send -a Carbon.pics Image uploaded
    rm /tmp/image.png
fi