alias -g N='>/dev/null 2>&1'

alias -g S='| sed'
alias -g A='| awk'
alias -g G='| grep'

alias -g X='| xargs'
alias -g X0='| xargs -0'

alias -g P='| $PAGER'
alias -g L='| less'
alias -g LP='| less --pattern'

alias -g HD='| head'
alias -g TL='| tail'

alias -g H='--help'
alias -g V='--version'

alias -g ...='../../'
alias -g ....='../../../'
alias -g .....='../../../../'
alias -g ......='../../../../../'

alias zshenv='(cd "$HOME" && $EDITOR .zshenv)'
alias zshrc='(cd "${ZDOTDIR:-$HOME}" && $EDITOR .zshrc)'
alias zprofile='(cd "${ZDOTDIR:-$HOME}" && $EDITOR .zprofile)'

alias path='echo ${(F)path}'
alias fpath='echo ${(F)fpath}'

alias all='type -aS'
