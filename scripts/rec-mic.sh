#!/bin/bash

filename="$1"

# Prompt interactively if no filename argument was provided
if [ -z "$filename" ]; then
  read -p "Enter file name: " filename
fi

# Default to timestamp if still blank
if [ -z "$filename" ]; then
  filename="recording_$(date +%Y%m%d_%H%M%S)"
fi

# Set up temporary MP4 file and final WebM path
final_webm="$(pwd)/${filename%_webm}_webm"

echo "----------------------------------------"
echo "Step 1: Recording smooth GPU-accelerated video..."
echo "Press Ctrl + C in this terminal to STOP recording."
echo "----------------------------------------"

# Record using hardware acceleration (H.264 / MP4)
gpu-screen-recorder -w screen -k h264 -c mp4 -f 30 -a "default_output|default_input" -o "$final_webm.mp4"
