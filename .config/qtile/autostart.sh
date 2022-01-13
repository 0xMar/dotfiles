#! /bin/bash
xbindkeys -p -f /home/victor/.config/xbindkeys/config/xbindkeysrc &
xset r rate 300 50 &
setxkbmap -option caps:swapescape &
picom --config /home/victor/.config/picom/picom.conf &
xautolock -time 10 -corners -000 -locker slock &
redshift &
play-with-mpv &
nitrogen --restore
