#!/bin/sh

xrdb -merge $HOME/.Xresources

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export SXHKD_SHELL='/usr/bin/sh'

setxkbmap -layout es &
numlockx &
exec bspwm
