# .bashrc

user="\[\033[38;5;10m\][\[$(tput sgr0)\]\h"
machine="\u\[$(tput sgr0)\]\[\033[38;5;10m\]]\[$(tput sgr0)\]"
export PS1="$user@$machine:\w\n\[$(tput sgr0)\]\[\033[38;5;10m\]>\[$(tput sgr0)\]"
export EDITOR='vim'
eval "$(/opt/homebrew/bin/brew shellenv)"
export GOPATH=/Users/$USER/repos
. "$HOME/.cargo/env"

# Aliases
alias ls='ls --color=auto'
