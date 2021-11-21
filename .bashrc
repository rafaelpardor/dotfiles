#!/bin/bash

HOSTNAME=$(hostname)
SHOW_GIT="\[\033[31m\]\$(parse_git_branch)\[\033[00m\]"

# Configurations
export EDITOR='vim'
export TERM=xterm-256color
export PS1="\[\033[33m\]\w\n\[\033[32m\]$USER@$HOSTNAME $SHOW_GIT: "


export GOPATH=/Users/$USER/repos
export GOBIN=/Users/$USER/repos/bin
export LSCOLORS=ExFxBxDxCxegedabagacad
export BASH_SILENCE_DEPRECATION_WARNING=1
export CLICOLORS=1

# mac
if [[ $(uname -s) == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Aliases
alias ls='ls --color=auto -a'
alias ll='ls --color=auto -la'
alias chmox='chmod -x'
alias gstat='git status -sb'
alias glog="git log --oneline --graph"
alias isosec="date +%Y%m%d%H%M%S"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
