#!/bin/sh

autostart_file=~/.config/autostart/autostart.sh

battery="mode=battery"
rice="mode=rice"
sed -i "s|$rice|tmp|; s|$battery|$rice|; s|tmp|$battery|" $autostart_file
sed -i 's|#00000000|tmp|; s|${xrdb:background}|#00000000|; s|tmp|${xrdb:background}|' ~/.config/polybar/bar.conf

if [ "$1" ]; then $1;
else . $autostart_file; fi
