#!/bin/bash
# [ -f ~/.xprofile ] && . ~/.xprofile &
[ -f ~/.config/X11/xprofile ] && . ~/.config/X11/xprofile &
[ -f ~/.config/X11/xresources ] && . ~/.config/X11/xresources &
# xrandr --dpi 96 &
# start_dwm
exec dwm
# exec xmonad
