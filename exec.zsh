function kl-exec () {
    if [ -z "$1" ]; then
        echo "Supply a pod name as first argument and optionally an executable as second (defaults to sh)"
    else
        if [ -z "$2" ]; then
            kl exec -it $1 sh
        else
            kl exec -it $1 $2
        fi
    fi
}
function k-exec() {
    if [ -z "$2" ]; then
        echo "Supply a pod name as first argument and optionally an executable as second (defaults to sh)"
    else
        if [ -z "$3" ]; then
            $1 exec -it $2 sh
        else
            $1 exec -it $2 $3
        fi
    fi
}
function kd-exec () {
    if [ -z "$1" ]; then
        echo "Supply a pod name as first argument and optionally an executable as second (defaults to sh)"
    else
        if [ -z "$2" ]; then
            kd exec -it $1 sh
        else
            kd exec -it $1 $2
        fi
    fi
}
function ks-exec () {
    if [ -z "$1" ]; then
        echo "Supply a pod name as first argument and optionally an executable as second (defaults to sh)"
    else
        if [ -z "$2" ]; then
            ks exec -it $1 sh
        else
            ks exec -it $1 $2
        fi
    fi
}
function kp-exec () {
    if [ -z "$1" ]; then
        echo "Supply a pod name as first argument and optionally an executable as second (defaults to sh)"
    else
        if [ -z "$2" ]; then
            kp exec -it $1 sh
        else
            kp exec -it $1 $2
        fi
    fi
}
