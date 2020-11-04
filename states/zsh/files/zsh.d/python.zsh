# python.zsh

# Disable the virtualenv prompt modifier
export VIRTUAL_ENV_DISABLE_PROMPT=true 

if [[ -x $(which virtualenvwrapper.sh) ]]; then
    VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
    source $(which virtualenvwrapper.sh)
fi

# Virtualenv Aliases
alias v='workon'
alias v.deactivate='deactivate'
alias v.mk='mkvirtualenv -p python3'
alias v.mk2='mkvirtualenv -p python2'
alias v.rm='rmvirtualenv'

alias py='ipython'
alias py2='ipython2'

#########
# pyenv #
#########

# NOTE: Works well for testing multiple python versions but is a bit laggy compared
# to virtualenvwrapper for simple library isolation under a single version (3.9.0)

#PYTHON3_DEFAULT_VERSION=3.9.0
#PYTHON2_DEFAULT_VERSION=2.7.16

# Initialize pyenv
#eval "$(pyenv init -)"
#if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
#
## Add pyenv bin to PATH
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#
## Set pyenv aliases
#alias v='pyenv local'
#alias v.deactivate='pyenv deactivate'
#function v.mk {
#  pyenv virtualenv ${2:-$PYTHON3_DEFAULT_VERSION} $1
#}
#function v.mk2 {
#  pyenv virtualenv ${2:-$PYTHON2_DEFAULT_VERSION} $1
#}

##########
# Poetry #
##########

POETRY_DEFAULT_VERSION=1.1.4

# Source Poetry env file
source $HOME/.asdf/installs/poetry/$POETRY_DEFAULT_VERSION/env
