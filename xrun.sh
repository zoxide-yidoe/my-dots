#!/bin/fish

set -gx TERMINAL alacritty
set -gx BROWSER firefox

pipewire &
pw-loopback --capture-props='media.class=Audio/Sink node.name=swapped_sink node.description="Swapped Stereo" audio.position=[FL FR]' --playback-props='audio.position=[FR FL]' &

exec xinit
