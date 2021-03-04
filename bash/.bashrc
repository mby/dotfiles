# defaults
source /usr/share/defaults/etc/profile
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/home/mby/.yarn/bin
export PATH=$PATH:/home/mby/.dotnet

# alises
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# options
HISTCONTROL=ignoreboth
shopt -s autocd

# keybinds
bind '"\C-f":" fzfcd
"'

# commands
setkbd() {
	setxkbmap gb
	setxkbmap -option caps:swapescape
}
setbg() {
	if [ -f ~/.fehbg ]
	then
		sleep 3 && bash ~/.fehbg
	fi
}
fzfcd() {
	cd `fd . ~ -t d | fzf --preview='tree -L {}'`
}
batcap() {
	cat /sys/class/power_supply/BAT1/capacity
}
rentr() {
	find . -type f -name "$1" | entr -cr $2
}
ide() {
	setkbd
	fzfcd
	nvim -c ':NERDTreeToggle'
}
