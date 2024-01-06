# Dotfiles

This is a collection of my personal dotfiles and quickstart to get up and running on a new system.

## Quickstart

The following is intended to get things up and running quickly, we will:

1. Install Homebrew (OSX Package Manager)
2. Using Homebrew, install packages defined in Brewfile
3. Using Ansible (installed via Homebrew) install configuration files

```
# Install Homebrew
$ bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Packages through Homebrew
$ brew bundle install

# Run Ansible to link files
ansible-playbook main.yml
```

# Bootstrapping

## OSX

Within Finder press `Command+Shift+Dot` to show hidden files, this will be needed for importing color themes into iTerm2. Current preference is `materialshell-dark`
