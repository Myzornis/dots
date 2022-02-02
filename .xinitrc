#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


sh /home/knight/.fehbg &


sxhkd&

xcape -e 'Control_L=Escape'&
xcape -t 500&
xcape -t 500&
#if dwm exits 0, restart -- this allows hot reloading of config.h

dunst&
dwmblocks&

#xcape -e 'Caps_Lock=Escape' -t 100 &
#picom -bcf &

while type dwm >/dev/null ; do  dwm && continue || break ; done

#exec dwm

