#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# load ruby gems into path
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# set keyboard layout
setxkbmap -variant colemak

# auto repeat caps backspace key
xset r 66
