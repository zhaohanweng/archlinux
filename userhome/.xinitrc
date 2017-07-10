#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

compton -CG &

thunar --daemon &
nitrogen --restore &
xsetroot -cursor_name left_ptr
tint2 &
volumeicon &
xscreensaver -no-splash &

xmobar &
exec openbox-session
