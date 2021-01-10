# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# path
export PATH=`yarn global bin`:$PATH

# programs
export FONT='Terminus'
export EDITOR='nvim'
export TERMINAL='alacritty'

# prompt
PS1='\033[34m\W: \033[39m'

# options
HISTCONTROL=ignoreboth
set -o vi
shopt -s autocd

# keybinds
bind '"\C-f":" cd `fd -t d . ~ | fzf --preview=\"tree -L 2 -C {}\"`
"'
bind '"\C-t":" clear && fg
"'

# aliases
alias cfg="git --git-dir=$HOME/dotfiles --work-tree=$HOME"
alias ls='ls --color=auto'
alias vi='nvim'
alias p='sudo pacman'


# commands
setkbd() {
	setxkbmap gb
	setxkbmap -option caps:swapescape
}
