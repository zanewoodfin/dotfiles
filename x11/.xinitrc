# set cursor
xsetroot -cursor_name left_ptr

# disable screensaver
xset -dpms
xset s noblank
xset s off

# set keyboard layout
setxkbmap -variant colemak &

# configure auxiliary keyboard buttons
if [ -x /usr/bin/xbindkeys ] ; then
  xbindkeys &
fi

# swap caps and esc
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# configure xterm
xrdb -merge ~/.Xresources

# create tray
trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --transparent true --tint 000  --height 12 &

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

# start window manager
exec xmonad
