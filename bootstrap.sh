# install gnu stow
sudo apt install stow -y

# install dotfiles
stow */

# install programs & their dependencies
find -type f -name '.deps*' -exec sh {} \;
