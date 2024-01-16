# Linux like file colors
export LSCOLORS=ExFxBxDxCxegedabagacad

# Enable CLI Colors
export CLICOLOR=1

# X11 Forwarding Requirements
export DISPLAY=":0"
export X11_PREFS_DOMAIN="org.macosforge.xquartz.X11"

# iTerm Stuff
[[ -e $HOME/.iterm2_shell_integration.zsh ]] && source $HOME/.iterm2_shell_integration.zsh

#Required for OSX Brew OpenSSH
export HOMEBREW_DIR=/usr/local/homebrew
export HOMEBREW_GITHUB_API_TOKEN=''
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --caskroom=/opt/homebrew-cask/Caskroom"
export HOMEBREW_NO_ANALYTICS=1
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";

# Increase File Descriptors
ulimit -n 10240

# Ansible on OSX: https://github.com/ansible/ansible/issues/31869
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Uncomment for Apple Silicon
eval "$(/opt/homebrew/bin/brew shellenv)"
