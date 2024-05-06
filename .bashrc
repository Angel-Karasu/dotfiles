#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then exec startx; fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias clean='rm -rf ~/.local/share/Trash/*; rm ~/.bash_history-*'

clear
fastfetch
