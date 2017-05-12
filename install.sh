#!/bin/bash

function copy_directories {
  local base=""
  if [[ ! -z "$1" ]]; then
    local base="$1/"
  fi
  for directory in $(ls -A $base ) ; do
    if [[ -d $base$directory ]]; then
      if [ ! -d $HOME/$base$directory ]; then
        mkdir $HOME/$base$directory
      fi
      copy_directories $base$directory
    fi
  done
}

for package in $(ls) ; do
  if [[ -d $package ]]; then
    cd $package
    copy_directories
    cd ..
    if stow $package; then
      echo "configured $package"
    else
      echo "Failed to configure $package"
    fi
  fi
done
