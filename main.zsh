# most is draft

zstyle ':completion:*' menu select=2
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

#autoload -U history-search-end
#zle -N history-beginning-search-backward-end history-search-end
#zle -N history-beginning-search-forward-end history-search-end
#bindkey "^[[A" history-beginning-search-backward-end
#bindkey "^[[B" history-beginning-search-forward-end

bindkey "^Xe" _expand_alias
bindkey '^X%' vi-match-bracket
bindkey '^\' redo  # to <ctrl-/> undo
# vi-cmd-mode 

autoload -Uz allopt

autoload -Uz insert-files
zle -N insert-files
bindkey '^Xf' insert-files

[[ $COLORTERM = *(24bit|truecolor)* ]] || zmodload zsh/nearcolor

