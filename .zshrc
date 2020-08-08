# ~/.zshrc
#
# oh-my-zsh
export ZSH=/usr/share/oh-my-zsh
ZSH_THEME="agnoster"
plugins=(
    rails
    git
    ruby
    themes
)
source $ZSH/oh-my-zsh.sh

# prompt
autoload -Uz promptinit
promptinit
prompt_context(){}

# completion
autoload -Uz compinit
compinit

# history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# add directories to path
export PATH=$PATH:/home/john/.local/bin/

# keybinds
bindkey "\e[3~" delete-char
bindkey "\e[H"  beginning-of-line
bindkey "\e[F"  end-of-line

# aliases
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias l='ls -l'
alias ll='ls -la'
