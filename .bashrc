PS1="\u@\h:\W >"
#set -o vi
#set -o emacs #default
#xbacklight -set 10
setxkbmap pl
# Wallpaper setting
feh --bg-fill ~/Downloads/Pics/cloud.png

# import cargo
source $HOME/.cargo/env

# import ta-lib
export LD_LIBRARY_PATH=/usr/local/lib
# keybindings
#xbindkeys -f .xbindkeysrc

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
 fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# ~/.bash_aliases, instead of adding them here directly.
# see /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi
export visual='atom'


#touchpad settings
# xinput --list			to list devices
# xinput --list-props id	to list settings
xinput --set-prop "ELAN2301:00 04F3:306B Touchpad" 378 1 #middleclick emu
xinput --set-prop "ELAN2301:00 04F3:306B Touchpad" 365 1 #tap to click
xinput --set-prop "ELAN2301:00 04F3:306B Touchpad" 345 1 #natural scroll

source "$HOME/.cargo/env"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ciecia/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ciecia/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ciecia/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ciecia/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

