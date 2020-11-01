
python-install:
  cmd.run:
    - names:
      - brew install python3
    - unless: brew list python3

python-install-neovim:
  cmd.run:
    - names:
      - pip3 install neovim
    - unless: pip3 list | grep neovim

python-install-pyenv:
  cmd.run:
    - names:
      - brew install pyenv
    - unless: brew list pyenv

