# 21-golang.zsh

# HACK: for auto update on upgrades
GO_VERSION=$(ls /opt/homebrew/Cellar/go/)

if [[ `uname` == 'Darwin' ]]; then
    # Install via homebrew
    export GOROOT="/opt/homebrew/Cellar/go/${GO_VERSION}/libexec"
    export PATH="$PATH:/usr/local/opt/go/bin"
elif [ -d "/usr/local/go" ]; then
    export GOROOT="/usr/local/go"
    export PATH="$PATH:/usr/local/go/bin"
else 
    export GOROOT="/app/go/"
fi

export GOPATH="$HOME/go"
# https://go.dev/ref/mod#workspaces
export GOWORK="off" # Set 'off' by default
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"
