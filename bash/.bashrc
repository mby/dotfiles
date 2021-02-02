# prompt
PS1='\033[34m\W: \033[39m'
export PATH=$PATH:/usr/sbin


# defaults
export BROWSER=firefox
export EDITOR=nvim
export TERMINAL=kitty


# options
HISTCONTROL=ignoreboth
set -o vi
shopt -s autocd


# keybinds
bind '"\C-f":" fzfcd
"'
bind '"\C-t":" clear && fg
"'

# colors
alias ls='ls --color=auto'
alias la='ls --color=auto -la'
alias vi='nvim'

# aliases
alias audp='sudo apt dist-upgrade'
alias aup='sudo apt upgrade'
alias au='sudo apt update'
alias ai='sudo apt install'
alias ar='sudo apt autoremove'
alias ass='sudo apt search'

# commands
setkbd() {
	setxkbmap gb
	setxkbmap -option caps:swapescape
}
fzfcd() {
	cd `sudo find ~/ \( ! -regex '.*/\..*' \) -type d | fzf --preview='tree -L {}'`
}
bat() {
	cat /sys/class/power_supply/BAT1/capacity
}
gmj() {
	emoji=`gitmoji -l | fzf | awk '{split($0,a,":"); print a[2]}'`
	printf ":$emoji: " | xclip -selection clipboard
}

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
