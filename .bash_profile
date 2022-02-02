#
# ~/.bash_profile
#
#[[ $TERM != "screen" ]] && exec tmux

[[ -f ~/.bashrc ]] && . ~/.bashrc


[ -z "$DISPLAY" ] && [ $XDG_VTNR -eq 1 ] && exec startx


