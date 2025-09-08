export PATH="$(go env GOPATH)/bin:${PATH}"
export GOPRIVATE="github.com/understory-io"

function gt() {
    if [ $# -eq 0 ]; then
        gotestsum --watch ./...
    else
        gotestsum "$@"
    fi
}
