#!/bin/bash

input_file="$1"

if [ -z "$input_file" ]; then
  read -p "Enter input MP4 file to convert: " input_file
fi

if [ ! -f "$input_file" ]; then
  echo "Error: File '$input_file' not found!"
  exit 1
fi

output_file="${input_file%.*}.webm"

echo "----------------------------------------"
echo "Converting '$input_file' to WebM (30 FPS)..."
echo "----------------------------------------"

ffmpeg -i "$input_file" -r 30 -threads 0 -c:v libvpx -cpu-used 4 -crf 18 -b:v 2M -c:a libvorbis -q:a 4 "$output_file"

echo "Done! Saved as: $output_file"

