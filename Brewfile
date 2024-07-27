# Bootstrapping
# NOTE: This is used in bootstraping dotfiles, I keep it for general server mgmt
# After initial install, I prefer to keep this within a Python virtualenv
#brew 'ansible' 

# Install Development Utilities
brew 'git'
tap 'neovim/neovim' || true
brew 'neovim'
brew 'tmux'

# Install CLI Utilities
brew 'jq'
brew 'fd'            # Replacement for file, 'fd' binary
brew 'ripgrep'       # Replacement for grep, 'rg' binary
brew 'gnupg'
brew 'tre-command'   # Replacement for tree, 'tre' binary
cask '1password-cli' # Installs 'op' binary
brew 'git-crypt'

# Static Site Generators
brew 'zola'
brew 'hugo'

# Install Network Utilities
brew "mtr"
brew "nmap"
brew 'sipcalc'

# Install Languages
brew 'go'
brew 'python3'
brew 'java'

# Install Language Tools
## Python
brew 'python-tk'        # prevents error when compiling different python versions with pyenv
brew 'pyenv-virtualenv' # all python packages in a virtualenv
brew 'pipx'
## Java
brew 'jenv'

# Hashicorp
brew 'packer'
brew 'terraform'
brew 'vault'
# alternatively, install from releases.hashicorp.com
#brew 'consul'
#brew 'nomad'

# K8s
brew 'kubectl'
brew 'k9s'
brew 'helm'
## K8s Talos
tap 'siderolabs/tap'
brew 'talosctl'

# YAML Tools
tap 'carvel-dev/carvel'
brew 'ytt'

# Shell
brew 'zsh'
brew 'sheldon'
