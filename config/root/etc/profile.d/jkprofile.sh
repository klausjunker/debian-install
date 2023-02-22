#!/bin/bash
# ~/.config/profile.d 
# ~/profile.d 
if [ -d ~/.config/profile.d ]; then
  for i in ~/.config/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
if [ -d ~/.profile.d ]; then
  for i in ~/.profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
