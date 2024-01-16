# python.zsh

PYTHON3_VERSION=3.10

#export PATH="$PATH:$HOME/Library/Python/$PYTHON3_VERSION/bin"
export PATH="/usr/local/opt/python@${PYTHON3_VERSION}/bin:$PATH"

###
# Virtualenvwrapper
###
# Disable the virtualenv prompt modifier
export VIRTUAL_ENV_DISABLE_PROMPT=true 
export WORKON_HOME=$HOME/.virtualenvs

if [[ -x $(which virtualenvwrapper.sh) ]]; then
    VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
    source $(which virtualenvwrapper.sh)
fi

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

#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

##########
# Poetry #
##########
#PYPI_USERNAME="colin.bruner"
#PYPI_PASSWORD=$(getpass -s pypi_pass)
