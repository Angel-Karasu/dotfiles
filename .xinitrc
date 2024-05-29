#!/bin/sh

xrdb -merge $HOME/.config/Xresources
exec i3 -c $HOME/.config/i3.conf