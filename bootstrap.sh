# install gnu stow
sudo eopkg it -y stow

# install dotfiles
stow */

# install programs & their dependencies
find -type f -name '.deps*' -exec sh {} \;
