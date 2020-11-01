

zsh-install-zsh:
  cmd.run:
    - names:
      - brew install zsh
    - unless: brew list zsh

zsh-install-sheldon:
  cmd.run:
    - names:
      - brew install sheldon
    - unless: brew list sheldon

zsh-link-zshrc:
  file.symlink:
    - name: {{ grains.homedir }}/.zshrc
    - target: {{ grains.statesdir}}/zsh/files/zshrc
    - force: true

zsh-link-zsh.d:
  file.symlink:
    - name: {{ grains.homedir }}/.zsh.d
    - target: {{ grains.statesdir}}/zsh/files/zsh.d
    - force: true

zsh-link-sheldon-config:
  file.symlink:
    - name: {{ grains.homedir }}/.sheldon/plugins.toml
    - target: {{ grains.statesdir}}/zsh/files/sheldon.toml
    - makedirs: true
    - force: true

