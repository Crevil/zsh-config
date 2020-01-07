alias golw="cd $GOPATH/src/bitbucket.org/LunarWay"

function depgraph() {
    if ! [ -x "$(command -v dot)" ]; then
        echo 'Error: dot not available in PATH. Install with "brew install graphviz" and retry.'
        return
    fi
    dep status -dot | dot -T png | open -f -a /Applications/Preview.app
}

alias depupdate="dep ensure -update"

function gowtest() {
    args=${@:-./...}
    nodemon --ext go --ignore "**/vendor/**" -x "gotest "$args" || exit 1"
}
function gowbuild() {
    args=${@:-cmd/main.go}
    nodemon --ext go -x "go build $args || exit 1"
}

function deplwupdate() {
    dep ensure -update bitbucket.org/LunarWay/$1
}
