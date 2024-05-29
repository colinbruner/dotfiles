#!/bin/bash

#TODO: Add comment/uncomment steps for ansible

if [[ ! $(which brew) ]]; then
  # Install Homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Packages through Homebrew
brew bundle install

# Run Ansible to link files
ansible-playbook main.yml
