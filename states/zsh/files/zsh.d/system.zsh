##########
# System #
##########
USER_BIN="$HOME/.bin:$HOME/.local/bin"
export PATH="/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin"
export PATH="${PATH}:${USER_BIN}"

# Vi mode
bindkey -v
bindkey '^R' history-incremental-search-backward
export KEYTIMEOUT=1
