# path
export PATH=`yarn global bin`:$PATH


# defaults
export FONT='Terminus'
export EDITOR='nvim'
export TERMINAL='alacritty'


# set misc
setxkbmap gb
setxkbmap -option caps:swapescape
xsetroot -bg '#000000'


# start window manager
exec dwm
