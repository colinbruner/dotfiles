# alises.zsh

###########
# Aliases #
###########

# vim
alias vi=$(which vim)
if [[ -x $(which nvim) ]]; then
    alias vi=$(which nvim)
    alias vim=$(which nvim)
fi

# fix tmux colors
#alias tmux="env TERM=xterm-256color tmux"
alias tmux='tmux -2'

alias dfs='cd ~/git/dotfiles'

# copy pubkey
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# util
alias grepnc='grep -v "^$\|^#"'
alias startssh='eval `ssh-agent -s` && ssh-add'

