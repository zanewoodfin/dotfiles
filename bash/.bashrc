#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# load ruby gems into path
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# LS AFTER DIR CHANGE
PREV_DIR=$PWD
LsAfterCd() {
  [[ "$PREV_DIR" == "$PWD" ]] && return 0
  fileCount=$(ls -1 | wc -l)
  if [ $fileCount -le 30 ]; then
    ls --color=always
  else
    echo "$fileCount visible files"
  fi
  PREV_DIR=$PWD
}
PROMPT_COMMAND="LsAfterCd; $PROMPT_COMMAND"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# No limit to history size
HISTSIZE=
HISTFILESIZE=
# Record datetime of commands and display it in "history" with this format
HISTTIMEFORMAT="[%F %T] "
# Use alternate history file location to prevent any apps from truncating file
HISTFILE=~/.bash_eternal_history
# Append history to history file after every command
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export EDITOR="vim"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color|screen) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

# Add git branch if its present to PS1
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
  PS1=$'\[\033[01;32m\]\D{%y-%m-%d}\[\033[00m\]|\[\033[01;32m\]\D{%H:%M:%S} \[\033[01;34m\]\W\[\033[01;31m\]$(parse_git_branch)\[\e[33m\]$\[\033[00m\] '
else
 PS1='\D{%y-%m-%d|%H:%M:%S} \W$(parse_git_branch)\$ :'
fi
unset color_prompt force_color_prompt

# enable color support of commands
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Add cargo to path
export PATH="$HOME/.cargo/bin:$PATH"

# set keyboard layout
setxkbmap -variant colemak

# auto repeat caps backspace key
xset r 66

# Prevents grey screen in Android Studio
wmname LG3D

# Courtesy
alias please="sudo"

# Load aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
