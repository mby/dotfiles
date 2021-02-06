setxkbmap gb
setxkbmap -option caps:swapescape

xsetroot -cursor_name left_ptr
[ -f ~/.fehbg ] && sh ~/.fehbg
compton &

exec i3
