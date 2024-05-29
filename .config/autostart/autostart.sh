#!/bin/sh

numlockx on

killall picom polybar

mode=rice
if [ $mode = "rice" ]; then
  feh -q --no-fehbg --bg-scale --randomize ~/.config/wallpapers/*
  picom -b --config ~/.config/picom.conf
else
  xsetroot -solid `xrdb -get background`
fi

polybar -q -c ~/.config/polybar/bar.conf bottom &