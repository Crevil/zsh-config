export CDPATH="$HOME/understory:$CDPATH"
export CDPATH="$HOME:$CDPATH"

export GOPATH="$HOME/go"

export SAVEHIST=10000
export HISTSIZE=10000

alias l="ls -la"
alias t="terraform"
alias editenv="code ~/zsh-config"

eval "$(direnv hook zsh)"

source ~/zsh-config/git.zsh
source ~/zsh-config/go.zsh
source ~/zsh-config/aws.zsh
