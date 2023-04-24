# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH="$PATH:$NPM_PACKAGES/bin:/$CARGO_HOME/bin:/usr/local/go/bin"

# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# If you come from bash you might have to change your $PATH.
# export TERM="xterm-256color"
# export MYZSH="$HOME/.config/zsh/.zshrc"

# export _Z_DATA="$HOME/.local/share/z"
## Path to your oh-my-zsh installation.
# export ZSH=$HOME/.config/oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='5'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='0'
POWERLEVEL9K_STATUS_OK_BACKGROUND='8'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='11'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='8'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='10'
POWERLEVEL9K_VCS_MAX_SYNC_LATENCY_SECONDS='0.05'
POWERLEVEL9K_VI_INSERT_MODE_STRING='INSERT'
POWERLEVEL9K_VI_COMMAND_MODE_STRING='NORMAL'﻿
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=() ZLE_RPROMPT_INDENT=0

ZSH_THEME="powerlevel10k/powerlevel10k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	pass
    z
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-interactive-cd
    gitignore
    nvm
    poetry
    fzf
	)

fpath+="${ZSH_CUSTOM:-"$ZSH/custom"}/plugins/zsh-completions/src"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
### ALIASES ###
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# crunchy-cli
alias crdown='crunchy-cli download -o "S{season_number}E{episode_number} - {title}.mkv" -a ja-JP -s es-419'
alias crarch='crunchy-cli archive -o "S{season_number}E{episode_number} - {title}.mkv" -a ja-JP -s es-419'

# root privileges
#alias doas="doas --"
alias _=sudo

# broot
alias br='br -dhp'
alias bs='br --sizes'

### SET BAT AS MANPAGER ###
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

### SET VIM AS MANPAGER ###
#export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""


# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
# export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"


# vim
alias vi='sudo nvim'
# alias vim=nvim
# export MYVIMRC="$XDG_CONFIG_HOME/nvim/init.lua"

# youtubedl mp3 dowload
alias mp3="youtube-dl -f bestaudio -x --audio-format "mp3" --audio-quality 320k"

# youtubedl check to avoid repeat items of list
alias mp3CheckList='for n in *.mp3
do if [[ "$n" =~ -[-_0-9a-zA-Z]{11}.mp3$ ]]
then echo "youtube ${n: -15: 11}" >> downloaded.txt
fi
done'

# youtubedl list dowload
alias mp3List='mp3CheckList && youtube-dl --download-archive downloaded.txt --no-post-overwrites -f bestaudio -ciwx --audio-format mp3 --audio-quality 320k'

# Changing "ls" to "exa"
alias l='exa -al -s=mod --color=always --group-directories-first' # my preferred listing
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# adding flags
alias cp="cp -i"                          # confirm before overwriting something
alias df='duf'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias vifm='$XDG_CONFIG_HOME/vifm/scripts/vifmrun'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# FZF
#export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/p10k/.p10k.zsh ]] || source ~/.config/p10k/.p10k.zsh

### SETS VI MODE ###
bindkey -v
export KEYTIMEOUT=1
bindkey '^R' history-incremental-search-backward
bindkey '^?' backward-delete-char
bindkey "ã" fzf-cd-widget

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
# (cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh

# pnpm
export PNPM_HOME="/home/victor/.local/share/pnpm"
export PATH="$PATH:$PNPM_HOME"

source /home/victor/.config/broot/launcher/bash/br
