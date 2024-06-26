#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then exec startx; fi

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias make='make -j 8'

alias clean='rm -rf ~/.local/share/Trash/*; rm ~/.bash_history*'

clear
fastfetch
