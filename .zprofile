#if [[ "$(tty)" = "/dev/tty1" ]]; then
#	pgrep qtile || startx "$XDG_CONFIG_HOME/x11/xinitrc"
#fi

[[$(fgconsole 2>/dev/null) == 1]] && exec startx --vt1
