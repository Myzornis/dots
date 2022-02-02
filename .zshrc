# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/.local/bin:/usr/local/bin:$HOME/.local/bin/$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export LC_ALL=en_US.UTF-8
export PATH="$HOME/.local/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(
	   fzf
	       git
    history-substring-search
      colored-man-pages
   zsh-autosuggestions
        zsh-syntax-highlighting
	 zsh-z
   vi-mode
			    )
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
bindkey '^ ' autosuggest-accept
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
 alias v=nvim

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
alias fv='find . -type f | fzf --preview "bat --color=always   --theme=gruvbox-dark --style=numbers --line-range=:500 {}" | xargs -r nvim'

alias tmux='tmux -2'

cht() {
  curl -s cht.sh/$1 | bat
}
img(){
  find $1 -type f -name "*.jpg" -o -name "*.png" -o -name "*.svg" | fzf --preview "chafa -s 50x50 {}" 
}
c() {
 d=$(find . -type d | fzf   --preview "ls -lah --color {}");
	[[ ! -z "$ --height=50% d" ]] && cd $d
}


alias doc='devour zathura $(find /home/knight/Documents/ -type f | fzf  --height=50% )'
alias mov='devour mpv --fullscreen --sid=no $(find /home/knight/Movies/ -type f -name "*.mkv" -o -name "*.mp4"  | fzf  --height=50% )'


alias r='find . -maxdepth 1  | fzf -m    --preview "ls -lah --color {}" | xargs -r trash'

alias nuke='ps aux | fzf --height=50% | awk "{print $11}" | xargs -r killall'
alias less='bat' 
alias pi='yay -Syyu'
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

export EDITOR=nvim
(cat ~/.cache/wal/sequences &)
