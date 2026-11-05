#!/bin/fish

set -gx TERMINAL alacritty
set -gx BROWSER firefox

pipewire &

exec xinit
