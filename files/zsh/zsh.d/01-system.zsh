# 01-system.zsh

USER_BIN="$HOME/.bin:$HOME/.local/bin:$HOME/.bin/work"

###
# Homebrew
# NOTE: This needs to be added early in process for other commands to be found
###
if [[ -d "/opt/homebrew/bin/" ]];then
  USER_BIN+=":/opt/homebrew/bin"
fi
if [[ -d "/opt/homebrew/sbin/" ]];then
  USER_BIN+=":/opt/homebrew/sbin"
fi

export PATH="/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin"
export PATH="${PATH}:${USER_BIN}"

###
# Kubernetes
###

# Vi mode
bindkey -v
bindkey '^R' history-incremental-search-backward
export KEYTIMEOUT=1
