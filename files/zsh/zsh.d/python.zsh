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

# Return available python 3.x.x versions
alias pyenv-available-install=$(pyenv install -l | egrep '^  3.*')

# list or activate venvs
function v() {
    if [[ $1 == "" ]]; then
        pyenv virtualenvs
    else
        pyenv activate $1
    fi
}

# create python version using latest installed or optionally supplied version
function v.mk() {
    if [[ $2 == "" ]]; then
        # attempt to grab latest installed version
        local latestInstalled=$(pyenv versions --bare --skip-aliases --skip-envs | tail -1)
        echo "Creating virtualenv using Python version: '${latestInstalled}'"
        pyenv virtualenv $latestInstalled $@
    else
        pyenv virtualenv $@
    fi
}

alias v.deactivate='pyenv deactivate' # deactivate venv
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
