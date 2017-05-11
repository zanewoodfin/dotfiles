#!/bin/bash

if type "xrandr" > /dev/null; then
  # enable external monitors
  xrandr --output DP2-1 --output eDP1 --primary --right-of DP2-1 --output DP2-2 --right-of eDP1
else
  echo "ERROR: xrandr is not installed!"
fi
