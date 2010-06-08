#!/bin/sh
# $XConsortium: xinitrc.cpp,v 1.4 91/08/22 11:41:34 rws Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/usr/lib/X11/xinit/.Xresources
sysmodmap=/usr/lib/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f $userresources ]; then
    xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi


setxkbmap pl &
# Start the window manager:
#exec /usr/bin/xcompmgr -CcfF -I-.015 -O-.03 -D4 -t-1 -l-3 -r4.2 -o.5 &
#exec /usr/bin/xcompmgr -CcfF -I-.015 -O-.03 -D4 -t-2 -l-2 -r5.2 -o.9 &
exec /usr/bin/fbsetbg -c ~/.background &
exec ~/bin/awesome/date.sh &
exec ~/bin/awesome/cpu.py &
#exec conky -c ~/.conky/Mira_green/.conkyrc_clock &
#exec conky -c ~/.conky/Mira_green/.conkyrc_weather &
#exec conky -c ~/.conky/Mira_green/.conkyrc_sys &
#exec conky -c ~/.conky/Mira_green/.conkyrc_net &
#exec conky -c ~/.conky/Mira_green/.conkyrc_disk &
#exec conky -c ~/.conky/Mira_green/.conkyrc_mpd &
#exec /usr/bin/xcompmgr -CcfF -I-.015 -O-.03 -D4 -t-2 -l-2 -r5.2 -o.9 &
exec /usr/bin/xcompmgr &
exec /usr/bin/awesome 
#exec fluxbox
