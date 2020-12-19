# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# connect to wifi
sudo wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant.conf
