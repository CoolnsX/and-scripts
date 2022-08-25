#user-defined functions
aria(){
	aria2c -c -s 16 -x 16 --referer="*" --dir=BB90-191C "$1" -o "$2" --check-certificate=false --download-result=hide --summary-interval=0
}

mpv() {
    [ -z "$*" ] ||
    am start --user 0 -a android.intent.action.VIEW -d "$*" -n is.xyz.mpv/.MPVActivity
}

gtp () {
    git add .
    git commit -m "$*"
    $HOME/token
    git push
}

gtb () {
    [ -z "$*" ] && br=$(git branch -a | fzf --height=8 --layout=reverse --border=rounded | tr -d ' ') || br=$*
    [ -z "$br" ] || git checkout $br
    unset br
}

gtd () {
    [ -z "$*" ] && file=$(git diff --name-only | fzf --height=8 --border=rounded --layout=reverse | tr -d ' ') || file=$*
    [ -z "$file" ] || git diff $file
    unset file
}

url() {
    curl -F"file=@$*" https://0x0.st
}

music () {
    am start --user 0 -a android.intent.action.VIEW -d $(curl -s -X POST -H "X-Requested-With:XMLHttpRequest" "https://ytmp3x.com/ajax" -d "purpose=download&token=$(curl -s -X POST -H "X-Requested-With:XMLHttpRequest" 'https://ytmp3x.com/ajax' -d "purpose=audio&token=$(curl -s "https://ytmp3x.com/$(printf "$*" | cut -d"=" -f2 | cut -d"/" -f4)" | sed -nE 's/.*token":"(.*)","adg.*/\1/p')" | sed -nE 's/.*audio":"(.*)"\}/\1/p')&b=320&r=https://ytmp3x.com/$id" | tr -d '\\' | sed -nE 's/.*mp3url":"(.*)"\}/\1/p') -n is.xyz.mpv/.MPVActivity >/dev/null 2>&1
}

# Lines configured by zsh-newuser-install
export EDITOR=nvim
alias v="nvim"
alias neofetch="neofetch --ascii_distro android_small"
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
