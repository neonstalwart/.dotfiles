#!/bin/sh

# install Command Line Tools for Xcode
echo "installing Command Line Tools"
xcode-select --install

# get homebrew
echo "installing homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# clone dotfiles
echo "cloning .dotfiles"
git clone https://github.com/neonstalwart/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# oh-my-zsh
echo "installing oh-my-zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install brew bundle from Brewfile
echo "installing brew bundle"
brew bundle

# install nvm
echo "installing nvm"
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# set paths for brew installs
source zshenv

# change shells
echo "changing shell to zsh"
ZSHPATH=$(which zsh)
sudo -s "echo $ZSHPATH >> /etc/shell"
chsh -s $ZSHPATH

# install node
echo "installing node"
nvm install 0.10
