

export ZSH_LIB=$HOME/lib
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="mlh" # set by `omz`

autoload -U +X bashcompinit && bashcompinit

source $ZSH_LIB/aliases.zsh
source $ZSH_LIB/env.zsh



plugins=(git-extras gh python pip npm)

source $ZSH/oh-my-zsh.sh
