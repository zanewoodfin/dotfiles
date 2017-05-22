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
dmenu
fontconfig
gvfs
gvfs-mtp
gvim
hunspell
hunspell-en
network-manager
network-manager-applet
openssh
pcmanfm
stow
termite
thunderbird
trash-cli
volumeicon
xmobar
xmonad
xterm
xbacklight
xbindkeys
xf86-video-intel
xorg-server
xorg-server-utils
xorg-xinit
xscreensaver

## Aur Packages
trayer-srg
xss-lock
