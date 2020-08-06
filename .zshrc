# Path to your oh-my-zsh installation.
export ZSH="/home/john/.oh-my-zsh"

# ZSH theme environment variable
ZSH_THEME="agnoster"

# ZSH Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# aliases
alias v='vim'
alias vi='vim'
alias l='ls -l'
alias ll='ls -la'
alias python='python3'

# add to path
export PATH=$PATH:/home/john/OpenVSP/OpenVSP-3.17.1-Linux
export PATH=$PATH:/home/john/Xfoil/bin
export PATH=$PATH:/home/john/Avl/bin
export PATH=$PATH:/snap/bin
