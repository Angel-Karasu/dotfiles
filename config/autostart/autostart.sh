#!/bin/sh

xrdb -merge $HOME/.config/Xresources
numlockx on

killall picom polybar

mode=rice
if [ $mode = "rice" ]; then
  feh -q --no-fehbg --bg-scale --randomize ~/.config/wallpapers/*
  picom -b --config ~/.config/picom.conf
else
  xsetroot -solid `xrdb -get background`
fi

brightnessctl s `brightnessctl g`
polybar -q -c ~/.config/polybar/bar.conf bottom &
