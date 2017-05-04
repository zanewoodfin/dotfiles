#!/bin/bash

if type "xrandr" > /dev/null; then
  # enable external monitors
  xrandr --output eDP1 --primary --output DP2-1 --left-of eDP1 --output DP2-2 --right-of eDP1
else
  echo "ERROR: xrandr is not installed!"
fi
