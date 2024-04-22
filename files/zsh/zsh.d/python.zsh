# python.zsh

###
# Virtualenv
###
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
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

###
# Aliases
###
alias py='ipython'

###
# Poetry
###
# Trusting System certs in an venv with poetry install
#poetry self add pip-system-certs
#poetry self lock
#poetry self install

#PYPI_USERNAME="colin.bruner"
#PYPI_PASSWORD=$(getpass -s pypi_pass)
