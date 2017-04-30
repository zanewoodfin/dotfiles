#!/bin/bash

# Requires base-devel, bash, and git
packages=('lrexlib-pcre5.1' 'lua51-sql-sqlite' 'luazip5.1' 'mudlet-git')

for pkg in "${packages[@]}"; do
    git clone https://aur.archlinux.org/"$pkg".git
    cd "$pkg"
    makepkg -si
    cd ..
done
