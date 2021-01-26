# prompt
PS1='\033[34m\W: \033[39m'
export PATH=$PATH:`yarn global bin`


# options
HISTCONTROL=ignoreboth
set -o vi
shopt -s autocd


# keybinds
bind '"\C-f":" fzfcd
"'
bind '"\C-t":" clear && fg
"'

# aliases
alias cfg="git --git-dir=$HOME/dotfiles --work-tree=$HOME"
alias ls='ls --color=auto'
alias la='ls --color=auto -la'
alias vi='nvim'
alias p='sudo pacman'

# commands
setkbd() {
	setxkbmap gb
	setxkbmap -option caps:swapescape
}
fzfcd() {
	cd `sudo find ~/ \( ! -regex '.*/\..*' \) -type d | fzf --preview='tree -L {}'`
}
lock() {
	i3lock-fancy -t "YILDIZ" -g
}
bat() {
	cat /sys/class/power_supply/BAT1/capacity
}
gmj() {
	emoji=`gitmoji -l | fzf | awk '{split($0,a,":"); print a[2]}'`
	echo $emoji | xclip -selection clipboard
}
