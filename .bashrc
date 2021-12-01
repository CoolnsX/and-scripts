alias v="nvim"
alias cp="cp -v"
alias rm="rm -v"
alias ll="ls -alh"
alias aria="aria2c -x 16 -s 16 -d /storage/7689-5BBD"

            __main() {
                local major="${BASH_VERSINFO[0]}"
                local minor="${BASH_VERSINFO[1]}"

                if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
                    source <(/data/data/com.termux/files/usr/bin/starship init bash --print-full-init)
                else
                    source /dev/stdin <<<"$(/data/data/com.termux/files/usr/bin/starship init bash --print-full-init)"
                fi
            }
            __main
            unset -f __main
            