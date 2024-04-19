# python.zsh

#PYTHON3_VERSION=3.11

#export PATH="$PATH:$HOME/Library/Python/$PYTHON3_VERSION/bin"
#export PATH="/usr/local/opt/python@${PYTHON3_VERSION}/bin:$PATH"

###
# Virtualenv
###
# https://github.com/pyenv/pyenv-virtualenv/issues/387#issuecomment-850839749
# :(
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# list or activate venvs
function v() {
    if [[ $1 == "" ]]; then
        pyenv virtualenvs
    else
        pyenv activate $1
    fi
}

alias v.deactivate='pyenv deactivate' # deactivate venv
alias v.mk='pyenv virtualenv'         # create venv
alias v.rm='pyenv virtualenv-delete'  # delete venv

alias py='ipython'

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
