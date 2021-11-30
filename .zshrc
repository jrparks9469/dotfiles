# ~/.zshrc

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

# bash completion
autoload bashcompinit
bashcompinit

# manpages
export MANPAGER='nvim +Man!'

# history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# add directories to path
export PATH=$PATH:/home/john/.local/bin/

# openfoam stuff
export FOAM_INST_DIR=/opt/OpenFOAM
export BASH=/bin/bash
alias ofoam="source ${FOAM_INST_DIR}/OpenFOAM-9/etc/bashrc"

# completion for beets
_get_comp_words_by_ref() { :; }
compopt() { :; }
_filedir() { :; }
eval "$(beet completion)"

# keybinds
bindkey "\e[3~" delete-char
bindkey "\e[H"  beginning-of-line
bindkey "\e[F"  end-of-line

# set neovim as the default edtior
export EDITOR='nvim'

# aliases
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias l='ls -l'
alias ll='ls -la'

# Engineering Sketch Pad
source /home/john/.local/build/esp/src/EngSketchPad/ESPenv.sh
