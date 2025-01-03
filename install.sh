#! /bin/bash

echo "installing packages from pacman"
sudo pacman -S neovim firefox neofetch fd htop glow netcat zsh ranger bluez-utils tor steam onionshare kleopatra keepassxc qbittorrent vlc gimp ripgrep xclip

echo "staring tor"
sudo systemctl enable tor
sudo systemctl start tor

echo "installing from yay"
yay -S python-updog
yay -S pfetch

echo "installing vim plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "setting up nvim"
mkdir ~/.config/nvim
cp init.lua ~/.config/nvim
cp vimrv.vim ~/.config/nvim

echo "setting up oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp zshrc ~/.zshrc
