# install gnu stow
sudo apt install -y stow

# install dotfiles
stow */

# install programs & their dependencies
find -type f -name '.deps*' -exec sh {} \;
