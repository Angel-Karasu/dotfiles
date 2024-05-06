#!/bin/sh

xrdb -merge $HOME/.Xresources
exec i3
brightnessctl s $(brightnessctl g)