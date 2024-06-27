#!/bin/bash
dir="$1";
if [ -z "$1" ]; then
  nvim $(ls -p | grep -v / | shuf -n 1)
else 
  dir+="/"
  dir+=$(ls "$1" -p | grep -v / | shuf -n 1)
  nvim $dir
fi
