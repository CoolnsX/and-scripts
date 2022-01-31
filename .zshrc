# Lines configured by zsh-newuser-install
alias v="nvim"
alias cp="cp -v"
alias grep="grep --color=auto"
alias ll="ls --color=auto -alh"
alias ls="ls --color=auto -hl"

source $PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

HISTFILE=~/.histfile
HISTSIZE=200
SAVEHIST=200
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
# End of lines added by compinstall

eval "$(starship init zsh)"
