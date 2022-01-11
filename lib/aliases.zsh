#!/usr/bin/env zsh

# pretty print $PATH
alias ppath="""echo $PATH | awk 'gsub(":", "\n")'"""

# alias brew-deptree-listing='/opt/homebrew/bin/brew leaves | xargs /opt/homebrew/bin/brew deps --installed --for-each | sed "s/^.*:/$(tput setaf 4)&$(tput sgr0)/"'
# alias brew-tree='brew-deptree-listing'

alias vim="nvim"
alias vi="vim"
alias cls="clear"
