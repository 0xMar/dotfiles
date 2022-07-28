if [[ "$(tty)" = "/dev/tty1" ]]; then
   exec startx
fi

# [[$(fgconsole 2>/dev/null) == 1]] && exec startx --vt1
