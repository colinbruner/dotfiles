#!/bin/bash

# Install Homebrew
bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Packages through Homebrew
brew bundle install

# Run Ansible to link files
ansible-playbook main.yml