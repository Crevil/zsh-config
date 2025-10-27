export SAVEHIST=10000
export HISTSIZE=10000

# share history across sessions
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

