#!/bin/sh

# install Command Line Tools for Xcode
echo "installing Command Line Tools"
xcode-select --install

# get homebrew
echo "installing homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# install brew bundle from Brewfile
echo "installing brew bundle"
brew bundle

# install nvm
echo "installing nvm"
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
[[ -s /Users/neonstalwart/.nvm/nvm.sh ]] && . /Users/neonstalwart/.nvm/nvm.sh
nvm install 0.10
