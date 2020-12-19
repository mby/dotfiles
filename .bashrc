# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# path
export PATH=`yarn global bin`:$PATH

# programs
export EDITOR='nvim'

# prompt
PS1='\W: '

# options
set -o vi
shopt -s autocd

# aliases
alias ls='ls --color=auto'
alias vi='nvim'
