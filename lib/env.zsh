#!/usr/bin/env zsh

# GitHub CLI
export GH_EDITOR="/usr/local/bin/nvim -d"
export VISUAL="/Applications/Sublime Text.app"
export EDITOR="/usr/bin/local/nvim"
export GLAMOUR_STYLE="dark"
export CLICOLOR=1

# homebrew
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
