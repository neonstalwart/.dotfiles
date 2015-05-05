PURE_PROMPT_SYMBOL="`whoami`@`hostname`❯"
source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle brew
antigen bundle node
antigen bundle npm
antigen bundle osx
antigen bundle bower
antigen bundle nvm
antigen bundle vundle
antigen bundle vagrant

antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

unsetopt sharehistory
export EDITOR=vim

# options for LESS
# F - quit if one screen
# g - hilite search
# m - long prompt
# R - raw control chars
# S - chop long lines
# x4 - tab-stop of 4
export LESS="-FgmRX -x4"

export MANPAGER=less

# get cpm working on mac
export CPM_PATH=/usr/local/lib/cpm

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias m=less
alias tree="tree -C"
alias l="ls -lA1"
