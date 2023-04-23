#!/bash
# ~/.bash_profile
#

[[ -f /home/victor/.config/bash/.bashrc ]] && . /home/victor/.config/bash/.bashrc

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

export EDITOR="nvim"
export READER="zathura"
export VISUAL="nvim"
export TERMINAL="zsh"
export BROWSER="brave"
export COLORTERM="truecolor"
export PAGER="less"
export WM="qtile"

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

source /home/victor/.config/broot/launcher/bash/br

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep qtile || startx "$XDG_CONFIG_HOME/X11/xinitrc"
fi
