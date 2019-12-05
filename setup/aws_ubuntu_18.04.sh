#!/bin/bash

# Because I hate repeating commands.

# For AWS, change the password to something I know.
sudo passwd ubuntu

# Install zsh, oh-my-zsh
sudo apt-get install -y zsh
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh); exit"
chsh /usr/bin/zsh

# TODO: Automatic detection of TMUX version and linking of configuration.

# Setup Vim: vimrc, download plugins.
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo 'Setting up git keys...'
# Move github keys to the right spot
cp ~/dotfiles/git/id_rsa.gpg ~/.ssh/
cp ~/dotfiles/git/id_rsa.pub.gpg ~/.ssh/

gpg --output ~/.ssh/id_rsa --decrypt ~/.ssh/id_rsa.gpg
gpg --output ~/.ssh/id_rsa.pub --decrypt ~/.ssh/id_rsa.pub.gpg

echo 'Installing Conda'

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O install_miniconda.sh
bash install_miniconda.sh -b -p ~/miniconda3
eval "$(~/miniconda3/bin/conda shell.bash hook)"
eval "$(~/miniconda3/bin/conda shell.zsh hook)"
conda init bash
conda init zsh

rm install_miniconda.sh

