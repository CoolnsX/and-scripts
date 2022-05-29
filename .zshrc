#user-defined functions
aria(){
	aria2c -s 16 -x 16 --referer="$1" --dir=7689-5BBD "$2" --check-certificate=false --download-result=hide --summary-interval=0 }

gitp(){
    git add .
    git commit -m "$1"
    $HOME/token
    git push
}

link() {
    curl -F"file=@$*" https://0x0.st
}

# Lines configured by zsh-newuser-install
export EDITOR=nvim
alias v="nvim"
alias notirm="termux-notification-remove"
alias exit="exit 0"
alias cp="cp -v"
alias rm="rm -v"
alias grep="grep --color=auto"
alias ll="ls --color=auto -alh"
alias ls="ls --color=auto"

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
source $PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
