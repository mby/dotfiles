# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# path
export PATH=`yarn global bin`:$PATH

# programs
export EDITOR='nvim'

# prompt
PS1='\033[36m\W: \033[39m'

# options
HISTCONTROL=ignoreboth
set -o vi
shopt -s autocd

# keybinds
bind '"\C-f":" cd && cd `fd -t d | fzf`
"'
bind '"\C-t":" clear && fg
"'

# aliases
alias cfg="git --git-dir=$HOME/dotfiles --work-tree=$HOME"
alias ls='ls --color=auto'
alias vi='nvim'
alias p='sudo pacman'
