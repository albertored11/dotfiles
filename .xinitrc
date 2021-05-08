#!/bin/sh

xrdb -merge $HOME/.Xresources

setxkbmap -layout es

xmodmap $HOME/.Xmodmap

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

numlockx &

exec i3
