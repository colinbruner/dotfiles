
brew-install-brew:
  cmd.run:
    - names: 
      - /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    - unless: which brew &>/dev/null

brew-copy-brewfile:
  file.symlink:
    - name: {{ grains.homedir }}/.config/brew/Brewfile
    - target: {{ grains.statesdir}}/brew/files/Brewfile
    - makedirs: true
    - force: true

brew-install-pkgs:
  cmd.run:
    - names:
      - brew bundle
    - cwd: {{ grains.homedir }}/.config/brew/
