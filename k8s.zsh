alias kd="kubectl --namespace dev"
alias ks="kubectl --namespace staging"
alias kp="kubectl --namespace prod"

alias kdev="k8s dev"
alias kstaging="k8s staging"
alias kprod="k8s prod"

alias wd="watch -n2 kubectl --namespace dev"
alias ws="watch -n2 kubectl --namespace staging"
alias wp="watch -n2 kubectl --namespace prod"

alias wad="watch-app dev"
alias was="watch-app staging"
alias wap="watch-app prod"

function watch-app() {
    if ! [ -z "$2" ]; then
        args='-l app="'$2'"'
    else
        args=''
    fi
    watch -n2 kubectl --namespace $1 get po "$args"
}

alias kd-forward="k-forward dev"
alias ks-forward="k-forward staging"
alias kp-forward="k-forward prod"

function k-forward() {
    kubectl -n $1 port-forward deploy/$2 9000:7900
}

function kd-sanity() {
    kd-exec $(kd-s sanity | awk '{print $1;}') bash
}
function ks-sanity() {
    ks-exec $(ks-s sanity | awk '{print $1;}') bash
}
function kp-sanity() {
    kp-exec $(kp-s sanity | awk '{print $1;}') bash
}
