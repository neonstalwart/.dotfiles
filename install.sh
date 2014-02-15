#!/bin/sh

# install Command Line Tools for Xcode
echo "installing Command Line Tools"
xcode-select --install

# get homebrew
echo "installing homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# clone dotfiles
echo "cloning .dotfiles"
git clone --recursive https://github.com/neonstalwart/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# install brew bundle from Brewfile
echo "installing brew bundle"
brew bundle

# install nvm
echo "installing nvm"
curl -L https://raw.github.com/creationix/nvm/master/install.sh | sh

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

# oh-my-zsh
echo "installing oh-my-zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# install zsh startup files
echo "linking dotfiles"
ln -s zshenv ~/.zshenv
ln -s zshrc ~/.zshrc

# change shells
echo "switching shells"
chsh -s $ZSHPATH
/usr/bin/env zsh
