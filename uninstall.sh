#!/bin/bash

for package in $(ls) ; do
  if [[ -d $package ]]; then
    if stow -D $package; then
      echo "unconfigured $package"
    else
      echo "failed to unconfigure $package"
    fi
  fi
done
