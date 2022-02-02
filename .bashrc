#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
 
#start tmux on shell login
#[[ $TERM != "screen" ]] && exec tmux

alias bat='bat --theme="gruvbox-dark" --color="always"'
alias vim='nvim'
alias ll='ls -lah'
#alias c='cd $(find . -type d | fzf  --preview "ls -lah --color {}") '
#alias cc='cd $(find ~ -type d | fzf  --preview "ls -lah --color {}") '
alias o='find . -type f | fzf --preview "bat --color=always   --style=numbers --theme=gruvbox-dark --line-range=:500 {}"'
alias fv='find . -type f | fzf --preview "bat --color=always   --theme=gruvbox-dark --style=numbers --line-range=:500 {}" | xargs -r nvim'

alias tmux='tmux -2'

cht() {
  curl -s cht.sh/$1 | bat
}

c() {
 d=$(find . -type d | fzf   --preview "ls -lah --color {}");
	[[ ! -z "$ --height=50% d" ]] && cd $d
}


alias doc='devour zathura $(find /home/knight/Documents/ -type f | fzf  --height=50% )'


alias r='find . -maxdepth 1  | fzf -m    --preview "ls -lah --color {}" | xargs -r trash'

alias nuke='ps aux | fzf --height=50% | awk "{print $11}" | xargs -r killall'
alias less='bat' 
alias pi='yay -Syyu'
(cat ~/.cache/wal/sequences &)

export EDITOR=nvim
