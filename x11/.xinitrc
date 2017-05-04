# set cursor
xsetroot -cursor_name left_ptr

# configure touchpad
xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Accel Speed" 0.75
xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1

# disable screensaver
xset -dpms
xset s noblank
xset s off

# start screensaver for ability to lock the screen
if [ -x /usr/bin/xscreensaver ] ; then
  xscreensaver -nosplash &
fi

# lock with xscreensaver on suspend
if [ -x /usr/bin/xss-lock ] ; then
  xss-lock -- xscreensaver-command -lock &
fi

# set keyboard layout
setxkbmap -variant colemak &

# auto repeat caps backspace key
xset r 66

# configure auxiliary keyboard buttons
if [ -x /usr/bin/xbindkeys ] ; then
  xbindkeys &
fi

# configure xterm
xrdb -merge ~/.Xresources

# create tray
trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --transparent true --tint 000  --height 18 --monitor primary &

# add sound icon to tray
if [ -x /usr/bin/volumeicon ] ; then
  volumeicon &
fi

# add power icon to tray
if [ -x /usr/bin/cbatticon ] ; then
  cbatticon &
fi

# add network icon to tray
if [ -x /usr/bin/nm-applet ] ; then
  nm-applet --sm-disable &
fi

# set background
if [[ -x /usr/bin/xloadimage && -f ~/.config/background.jpg ]]; then
  xloadimage -onroot ~/.config/background.jpg &
fi

# start window manager
exec xmonad
