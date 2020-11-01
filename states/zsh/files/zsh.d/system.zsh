##########
# System #
##########
USER_BIN="$HOME/.bin:$HOME/.local/bin"
export PATH="/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin"
export PATH="${PATH}:${USER_BIN}"
# Pyenv
export PATH="$HOME/.pyenv/bin:$PATH"

# Vi mode
bindkey -v
bindkey '^R' history-incremental-search-backward
export KEYTIMEOUT=1

autoload -Uz compinit && compinit
autoload -U promptinit; promptinit

zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=36=31"
zstyle ':completion:*' hosts off
