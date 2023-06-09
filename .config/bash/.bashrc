#!/bash
# ~/.bashrc
#

#export TERM="xterm-256color"
#
#
## If not running interactively, don't do anything
#[[ $- != *i* ]] && return
#
#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

PATH="/home/victor/.local/bin${PATH:+:${PATH}}" # adding .local/bin to $PATH
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export TERM="xterm-256color"            # getting proper colors
export HISTCONTROL=ignoredups:erasedups # no duplicate entries
#export ALTERNATE_EDITOR=""                # setting for emacsclient
#export EDITOR="emacsclient -t -a ''"      # $EDITOR use Emacs in terminal
#export VISUAL="emacsclient -c -a emacs"   # $VISUAL use Emacs in GUI mode
export EDITOR="nvim" # $EDITOR use Emacs in terminal
export VISUAL="nvim" # $VISUAL use Emacs in GUI mode

# [[ $- != *i* ]] && return

# colors() {
#   local fgc bgc vals seq0
#
#   printf "Color escapes are %s\n" '\e[${value};...;${value}m'
#   printf "Values 30..37 are \e[33mforeground colors\e[m\n"
#   printf "Values 40..47 are \e[43mbackground colors\e[m\n"
#   printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"
#
#   # foreground colors
#   for fgc in {30..37}; do
#     # background colors
#     for bgc in {40..47}; do
#       fgc=${fgc#37} # white
#       bgc=${bgc#40} # black
#
#       vals="${fgc:+$fgc;}${bgc}"
#       vals=${vals%%;}
#
#       seq0="${vals:+\e[${vals}m}"
#       printf "  %-9s" "${seq0:-(default)}"
#       printf " ${seq0}TEXT\e[m"
#       printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
#     done
#     echo; echo
#   done
# }

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash-completion ]] &&
	. /usr/share/bash-completion/bash_completion

# Change the window title of X terminals
case ${TERM} in
xterm* | rxvt* | Eterm* | aterm | kterm | gnome* | interix | konsole*)
	PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
	;;
screen*)
	PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
	;;
esac

# use_color=true

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.  Use internal bash
# globbing instead of external grep binary.
# safe_term=${TERM//[^[:alnum:]]/?}   # sanitize TERM
# match_lhs=""
# [[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
# [[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
# [[ -z ${match_lhs}    ]] \
#   && type -P dircolors >/dev/null \
#   && match_lhs=$(dircolors --print-database)
# [[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true
#
# if ${use_color} ; then
#   # Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
#   if type -P dircolors >/dev/null ; then
#     if [[ -f ~/.dir_colors ]] ; then
#       eval $(dircolors -b ~/.dir_colors)
#     elif [[ -f /etc/DIR_COLORS ]] ; then
#       eval $(dircolors -b /etc/DIR_COLORS)
#     fi
#   fi
#
#   if [[ ${EUID} == 0 ]] ; then
#     PS1='\[\033[01;31m\][\h\[\033[01;36m\] \W\[\033[01;31m\]]\$\[\033[00m\] '
#   else
#     PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
#   fi
#
#     grep='grep --colour=auto' \
#     egrep='egrep --colour=auto' \
#     fgrep='fgrep --colour=auto'
# else
#   if [[ ${EUID} == 0 ]] ; then
#     # show root@ when we don't have colors
#     PS1='\u@\h \W \$ '
#   else
#     PS1='\u@\h \w \$ '
#   fi
# fi
#
# unset use_color safe_term match_lhs sh

# xhost +local:root > /dev/null 2>&1

# complete -cf sudo

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

shopt -s expand_aliases

# export QT_SELECT=4

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

#
# # ex - archive extractor
# # usage: ex <file>
ex() {
	if [ -f "$1" ]; then
		case $1 in
		*.tar.bz2) tar xjf "$1" ;;
		*.tar.gz) tar xzf "$1" ;;
		*.bz2) bunzip2 "$1" ;;
		*.rar) unrar x "$1" ;;
		*.gz) gunzip "$1" ;;
		*.tar) tar xf "$1" ;;
		*.tbz2) tar xjf "$1" ;;
		*.tgz) tar xzf "$1" ;;
		*.zip) unzip "$1" ;;
		*.Z) uncompress "$1" ;;
		*.7z) 7z x "$1" ;;
		*) echo "'$1' cannot be extracted via ex()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

### ALIASES ###

# root privileges
alias doas="doas --"
alias sudo='sudo '

# navigation
alias ..='cd ..'
alias ...='cd ../..'

# vim and emacs
alias vim=nvim
#alias em="/usr/bin/emacs -nw"
#alias emacs="emacsclient -c -a ''"

# devour windows
#alias mpv="devour mpv"
#alias sxiv="devour sxiv"
#alias zathura="devour zathura"

# youtubedl mp3 dowload
alias mp3="youtube-dl -f bestaudio -x --audio-format 'mp3' --audio-quality 320k"

# youtubedl check to avoid repeat items of list
alias mp3CheckList='for n in *.mp3
do if [[ "$n" =~ -[-_0-9a-zA-Z]{11}.mp3$ ]]
then echo "youtube ${n: -15: 11}" >> downloaded.txt
fi
done'

# youtubedl list dowload
alias mp3List='mp3CheckList && youtube-dl --download-archive downloaded.txt --no-post-overwrites -f bestaudio -ciwx --audio-format mp3 --audio-quality 320k'

# broot
alias br='br -dhp'
alias bs='br --sizes'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# adding flags
alias cp="cp -i"     # confirm before overwriting something
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB
#alias lynx='lynx -cfg=~/.lynx/lynx.cfg -lss=~/.lynx/lynx.lss -vikeys'
alias vifm='./.config/vifm/scripts/vifmrun'

# the terminal rickroll
#alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# bare git repo alias for dotfiles
#alias config="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"

# termbin
alias tb="nc termbin.com 9999"

### SET VI MODE IN BASH SHELL
set -o vi

### SET VIM AS MANPAGER ###
#export MANPAGER="/bin/sh -c \"col -b | vim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""
export MANPAGER='nvim +Man!'
export MANWIDTH=999

### BASH POWERLINE ###
# source ~/.config/bash/.bash-powerline.sh

### BROOT ###
#source /home/dt/.config/broot/launcher/bash/br

### BASH INSULTER ###
#if [ -f /etc/bash.command-not-found ]; then
#    . /etc/bash.command-not-found
#fi

### FORCE ALL KAKOUNE WINDOWS TO BE IN ONE SESSION
#alias kak="kak -c mysession"

### CLEAR THE  TERMINAL
# alias clear='[ $[$RANDOM % 10] = 0 ] && cd /home/dt/vt100 && ./slowcat.pl $(/bin/ls | grep .vt | shuf -n 1) || clear'

### RANDOM COLOR SCRIPT ###
#/opt/shell-color-scripts/colorscript.sh random

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
# (cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences

source "/home/victor/.config/broot/launcher/bash/br"

function _update_ps1() {
	PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
	PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
