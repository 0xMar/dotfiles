typeset -U PATH path

# profile file. Runs on login. Environmental variables are set here.

# If you don't plan on reverting to bash, you can remove the link in ~/.profile
# to clean up.

# Adds `~/.local/bin` to $PATH
#export PATH=$HOME/bin:/usr/local/bin:$PATH


# Default programs:
export EDITOR="nvim"
export TERMINAL="zsh"
export BROWSER="brave"
export WM="xmonad"

# Other XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

# Doesn't seem to work
export ANDROID_HOME="$XDG_DATA_HOME/android"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export ANDROID_AVD_HOME="$XDG_DATA_HOME/android"
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME/android"
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME/android"

# Disable files
export LESSHISTFILE=-

# Fixing Paths
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/x11/xserverrc"
export GEM_PATH="$XDG_DATA_HOME/ruby/gems"
export GEM_SPEC_CACHE="$XDG_DATA_HOME/ruby/specs"
export GEM_HOME="$XDG_DATA_HOME/ruby/gems"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_PACKAGES="$XDG_DATA_HOME/npm-packages"
export GOPATH="$XDG_DATA_HOME/go/bin"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export ZDOTDIR="$HOME/.config/zsh"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export CARGO_HOME="$XDG_DATA_HOME/rust/cargo"
export RUSTUP_HOME="$XDG_CACHE_HOME/rust/rustup"
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/ripgreprc"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"
export PNPM_HOME="$XDG_DATA_HOME/pnpm"

# Other program settings:
export MINIKUBE_HOME="$XDG_DATA_HOME/minikube"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
#export LESS='-R --use-color -Dd+r$Du+b'
#export LESS_TERMCAP_mb="$(printf '%b' ' [1;31m')"
#export LESS_TERMCAP_md="$(printf '%b' ' [1;36m')"
#export LESS_TERMCAP_me="$(printf '%b' ' [0m')"
#export LESS_TERMCAP_so="$(printf '%b' ' [01;44;33m')"
#export LESS_TERMCAP_se="$(printf '%b' ' [0m')"
#export LESS_TERMCAP_us="$(printf '%b' ' [1;32m')"
#export LESS_TERMCAP_ue="$(printf '%b' ' [0m')"
#export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"
export QT_QPA_PLATFORMTHEME="gtk2"	# Have QT use gtk2 theme.
export MOZ_USE_XINPUT2="1"		# Mozilla smooth scrolling/touchpads.
export PRETTIERD_DEFAULT_CONFIG="$XDG_CONFIG_HOME/prettierd/.prettierrc.json"
export MYZSH="$XDG_CONFIG_HOME/zsh/.zshrc"
export _Z_DATA="$XDG_DATA_HOME/z"
export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MPLAYER_HOME="$XDG_CONFIG_HOME/mplayer"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
export PYTHONSTARTUP="/etc/python/pythonrc"
export STACK_ROOT="$XDG_DATA_HOME/stack"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export SSB_HOME="$XDG_DATA_HOME"/zoom
export VIMINIT='let $MYVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/vimrc" : "$XDG_CONFIG_HOME/nvim/init.lua" | so $MYVIMRC'

# Path
path=("$HOME/.local/bin" "$NPM_PACKAGES/bin:/$CARGO_HOME/bin" "/usr/local/go/bin" "$path[@]")
export PATH

# This is the list for lf icons:
export LF_ICONS="di=📁:\
fi=📃:\
tw=🤝:\
ow=📂:\
ln=⛓:\
or=❌:\
ex=🎯:\
*.txt=✍:\
*.mom=✍:\
*.me=✍:\
*.ms=✍:\
*.png=🖼:\
*.webp=🖼:\
*.ico=🖼:\
*.jpg=📸:\
*.jpe=📸:\
*.jpeg=📸:\
*.gif=🖼:\
*.svg=🗺:\
*.tif=🖼:\
*.tiff=🖼:\
*.xcf=🖌:\
*.html=🌎:\
*.xml=📰:\
*.gpg=🔒:\
*.css=🎨:\
*.pdf=📚:\
*.djvu=📚:\
*.epub=📚:\
*.csv=📓:\
*.xlsx=📓:\
*.tex=📜:\
*.md=📘:\
*.r=📊:\
*.R=📊:\
*.rmd=📊:\
*.Rmd=📊:\
*.m=📊:\
*.mp3=🎵:\
*.opus=🎵:\
*.ogg=🎵:\
*.m4a=🎵:\
*.flac=🎼:\
*.wav=🎼:\
*.mkv=🎥:\
*.mp4=🎥:\
*.webm=🎥:\
*.mpeg=🎥:\
*.avi=🎥:\
*.mov=🎥:\
*.mpg=🎥:\
*.wmv=🎥:\
*.m4b=🎥:\
*.flv=🎥:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.z64=🎮:\
*.v64=🎮:\
*.n64=🎮:\
*.gba=🎮:\
*.nes=🎮:\
*.gdi=🎮:\
*.1=ℹ:\
*.nfo=ℹ:\
*.info=ℹ:\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=🔽:\
*.jar=♨:\
*.java=♨:\
"
