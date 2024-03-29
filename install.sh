#!/bin/sh

# install Command Line Tools for Xcode
echo "installing Command Line Tools"
xcode-select --install

# get homebrew
echo "installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# clone dotfiles
echo "cloning .dotfiles"
git clone --recursive https://github.com/neonstalwart/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# install brew bundle from Brewfile
echo "installing brew bundle"
brew bundle

# install nvm
echo "installing nvm"
curl -L https://rawgit.com/creationix/nvm/master/install.sh | sh

# initialize nvm
source zshenv

# install node
echo "installing node"
nvm install 0.10
nvm alias default 0.10

# add zsh to etc/shells
ZSHPATH=$(which zsh)
echo "adding $ZSHPATH to /etc/shells"
sudo -s "echo $ZSHPATH >> /etc/shells"

# antigen
echo "installing antigen"
git clone https://github.com/zsh-users/antigen.git ~/.antigen

# install zsh startup files
echo "linking dotfiles"
ln -s ~/.dotfiles/zshenv ~/.zshenv
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/tmux ~/.tmux
ln -s ~/.dotfiles/agignore ~/.agignore
ln -s ~/.dotfiles/cgdb ~/.cgdb

# change shells
chsh -s $ZSHPATH
