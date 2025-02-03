alias hb="gh repo view --web"
alias hc="gh pr create --web"
alias g="git"
alias gl="git pull"
alias gcm='git checkout $(git remote show origin | sed -n "/HEAD branch/s/.*: //p")'
alias gco="git checkout"