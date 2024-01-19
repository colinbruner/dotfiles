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
alias tmux='tmux -2'

# Laziness Shortcuts
alias dfs='cd ~/code/colinbruner/dotfiles'

# Alias ipcalc to 'sipcalc' brew installed executable
alias ipcalc='sipcalc'

alias k="kubectl"

## Git
alias glg1="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias glg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gs="git stash"
alias gsl="git stash list"

# copy pubkey
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# util
alias lower="awk '{print tolower(\$0)}'"
alias upper="awk '{print toupper(\$0)}'"
alias grepnc='grep -v "^$\|^#"'
alias startssh='eval `ssh-agent -s` && ssh-add'
# https://github.com/asciinema/asciicast2gif
alias asciicast2gif='docker run --rm -v $PWD:/data asciinema/asciicast2gif'

