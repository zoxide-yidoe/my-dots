#!/bin/sh

xrdb merge ~/.Xresources
xbacklight -set 10 &
feh --bg-fill ~/Pictures/wall/sta-wall/gruvbox/wall3.png
xset r rate 200 50 &
xinput set-prop 7 321 0 1 0
xinput set-prop 7 318 -0.34
picom &

while type vxwm >/dev/null; do vxwm && continue || break; done
