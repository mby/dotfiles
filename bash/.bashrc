# defaults
source /usr/share/defaults/etc/profile
export PATH=$PATH:/usr/local/bin

# alises
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# programs
export BROWSER='firefox'
export EDITOR='nvim'
export TERMINAL='kitty'

# options
HISTCONTROL=ignoreboth
set -o vi
shopt -s autocd

# keybinds
bind '"\C-f":" fzfcd
"'

# commands
setkbd() {
	setxkbmap gb
	setxkbmap -option caps:swapescape
}
fzfcd() {
	cd `fd . ~ -t d | fzf --preview='tree -L {}'`
}
batcap() {
	cat /sys/class/power_supply/BAT1/capacity
}
gmj() {
	emoji=`gitmoji -l | fzf | awk '{split($0,a,":"); print a[2]}'`
	printf ":$emoji: " | xclip -selection clipboard
}
rentr() {
	find . -type f -name "$1" | entr -cr $2
}
ide() {
	setkbd
	fzfcd
	vi -c ':NERDTreeToggle'
}

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
