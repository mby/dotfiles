# prompt
PS1='\[\033[34m\]\W\[\033[37m\]: '

# defaults
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/.yarn/bin
export PATH=$PATH:$HOME/go/bin

# alises
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# secrets
[ -f ~/.bash_secrets ] && source ~/.bash_secrets

# options
HISTCONTROL=ignoreboth
shopt -s autocd

# keybinds
bind '"\C-f":" fzfcd
"'

# commands
swapcaps() {
	setxkbmap -option caps:swapescape
}
fzfcd() {
	cd `fd . ~ -t d | fzf --preview='tree -L {}'`
}
rentr() {
	fd -t f "$1" | entr -cr $2
}
gorun() {
	fd -t f '*.go' | entr -cr 'go run .'
}
mocky() {
	files=`fd 'repository.go'`
	for f in $files; do
		root=`pwd`
		mockfile=`basename $f`
		mockfile=${mockfile%.go}_mock.go

		cd `dirname $f`/../../
		pack=`pwd`
		pack=`basename $pack`

		echo ${f%.go}_mock.go

		cd $root
		cd `dirname $f`
		mockgen -source=repository.go -destination=$mockfile -package=pack
		cd $root
	done
}
