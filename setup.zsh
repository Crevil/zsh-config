export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$HOME/.scripts:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$GOBIN:$PATH"
export PATH="$PATH:$HOME/.linkerd2/bin"
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:$PATH"

export CDPATH="$HOME/repo:$HOME/go/src/bitbucket.org/LunarWay:$HOME/go/src/github.com/lunarway:$HOME/go/src/github.com:$HOME/gitRepo:$HOME"
export LW_PATH="$HOME/repo"

export LOG_CONSOLE_AS_JSON=false
export LOG_LEVEL=debug
export LOG_DEVELOPMENT=true
export DBUSER=lunarway
export DBHOST=localhost
export DBDATABASE=lunarway
export DBPASSWORD=lunarway
export DBSCHEMA=public
export PSQLRC="$HOME/.psqlrc"

export RABBITMQ_HOST=localhost
export RABBITMQ_USER=lunarway
export RABBITMQ_PASSWORD=lunarway
export RABBITMQ_PREFIX=local-k8s
export RABBITMQ_VHOST=/

export MOCK_LOCALIZATION_ENABLE=true

alias s="shuttle"
alias sr="shuttle run"
alias h="hamctl"
alias editenv="code ~/.zsh-custom"

alias dpostgres="docker run --rm -p 5432:5432 -e POSTGRES_USER=lunarway timms/postgres-logging:9.6"
alias drabbit="docker run --rm --hostname rabbitmq -p 5672:5672 -p 80:15672 -e RABBITMQ_DEFAULT_USER=lunarway -e RABBITMQ_DEFAULT_PASS=lunarway rabbitmq:3-management"

export PROTO_PATH="$GOPATH/src/bitbucket.org/LunarWay/lw-grpc/protos"

function egrpc() {
    local package=$1
    # upper case first letter
    local service=${(U)package[1]}${package[2,${#package}]}
    local method=$2
    if [ "$package" = "" ]; then
        echo "First argument should be the gRPC package"
        return 1
    fi
    if [ "$method" = "" ]; then
        echo "Second argument should be the gRPC service method name"
        return 1
    fi

    evans --host localhost --port 9000 --package "$package" --service "$service" --call "$2" "$PROTO_PATH/$package/$package.proto"
}


function get-events() {
    userId=$1
    eventName=$2
    echo "{ \"include_content_json\": true, \"user_id\": \"$userId\", \"event_name\": \"$eventName\" }" | evans \
        --host localhost \
        --port 9000 \
        --package eventstore  \
        --service EventStore \
        --call GetEvents \
        "$GOPATH/src/bitbucket.org/LunarWay/lw-grpc/protos/eventstore/eventstore.proto"
}

source ~/.zsh-custom/k8s.zsh
source ~/.zsh-custom/exec.zsh
source ~/.zsh-custom/git.zsh
source ~/.zsh-custom/go.zsh
source ~/.zsh-custom/search.zsh
source ~/.zsh-custom/secret.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
