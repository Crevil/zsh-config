export CDPATH="$HOME/understory:$CDPATH"
export CDPATH="$HOME:$CDPATH"

export GOPATH="$HOME/go"

# sprt
export PATH="$HOME/.local/bin:$PATH"

alias l="ls -la"
alias t="terraform"
alias editenv="code ~/zsh-config"

eval "$(direnv hook zsh)"

source ~/zsh-config/secret.zsh
source ~/zsh-config/zsh.zsh
source ~/zsh-config/git.zsh
source ~/zsh-config/go.zsh
source ~/zsh-config/aws.zsh
source ~/zsh-config/riddance.zsh
source ~/zsh-config/env.zsh
source ~/zsh-config/mise.zsh
source ~/zsh-config/macos.zsh
