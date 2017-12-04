PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/.tmuxifier/bin:$PATH

alias ls='/usr/local/bin/gls -F --color=auto'
alias L='/usr/local/bin/gls -lLF --color=auto'
alias l='/usr/local/bin/gls -lF --color=auto'
alias la='/usr/local/bin/gls -laF --color=auto'
alias emacs='emacs -nw'
alias m='less -iM'
alias more='m'
alias mroe='m'
alias pwd='echo $PWD'
alias vu='vagrant up'
alias vs='vagrant status'
alias vssh='vagrant ssh'
alias vd='vagrant destroy'
alias vdf='vagrant destroy -f'
alias vp='vagrant provision'

function chpwd() {
    emulate -L zsh
    ls
}

autoload -Uz chpwd_recent_dirs cdr add-zsh-hook

function psg() {
    emulate -L zsh
    ps -ef | grep -v grep | egrep -i "$*"
}

set -o emacs

eval $(gdircolors ~/.dir_colors/dircolors.256dark)
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/src/div/liquidprompt/liquidprompt
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
