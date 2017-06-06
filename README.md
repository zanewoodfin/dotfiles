# My Configuration
This is an attempt to reify and organize my computing environment.
Configuration files are organized by application or category to be symlinked with stow.

## Usage
Create all directories and symlink all configuration files into them

```
./install.sh
```

Remove all symlinks (does not remove directories created with install script)

```
./uninstall.sh
```

Symlink configuration for individual applications or categories

```
stow <directory>
```

Remove all symlinks for a particular application or category

```
stow -D <directory>
```

## Packages
acpi
alsa-utils
chromium
bash-completion
dmenu
evince
firefox
fontconfig
geckodriver
gnome-keyring
gvfs
gvfs-mtp
gvim
htop
hunspell
hunspell-en
network-manager
network-manager-applet
nodejs
openssh
pcmanfm
phantomjs
ruby
stow
termite
thunderbird
tmux
trash-cli
volumeicon
xmobar
xmonad
xterm
xbindkeys
xf86-video-intel
xloadimage
xorg-server
xorg-server-utils
xorg-xbacklight
xorg-xinput
xorg-xset
xorg-xsetroot
xscreensaver
yarn

## Aur Packages
rbenv
ruby-build
trayer-srg
xss-lock
