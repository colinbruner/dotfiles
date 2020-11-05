
brew-copy-brewfile.work:
  file.managed:
    - name: {{ grains.homedir }}/.config/brew/Brewfile.work
    - target: {{ grains.statesdir}}/brew/files/Brewfile.work
    - makedirs: true
    - force: true

brew-install-work-pkgs:
  cmd.run:
    - names:
      - brew bundle --file=Brewfile.work
    - cwd: {{ grains.homedir }}/.config/brew/

