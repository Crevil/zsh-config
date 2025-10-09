function load_env() {
    local env_file="${1:-.env.local}"
    if [ -f "$env_file" ]; then
        export $(cat "$env_file" | grep -v '^#' | grep -v '^$' | sed 's/^/export /')
    else
        echo "Environment file '$env_file' not found"
    fi
}
