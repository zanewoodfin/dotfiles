#!/bin/bash

if type "xrandr" > /dev/null; then
  # enable monitor through insignia usb-c to hdmi adapter
  xrandr --addmode DP1 1920x1080
  # enable external monitors
  xrandr --output eDP1 --auto --output HDMI2 --auto --right-of eDP1 --output DP1 --auto --left-of eDP1
else
  echo "ERROR: xrandr is not installed!"
fi
