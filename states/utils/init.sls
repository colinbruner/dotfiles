
utils-install-fzf:
  cmd.run:
    - names:
      - brew install fzf
    - unless: brew list fzf
utils-install-z:
  cmd.run:
    - names:
      - brew install z
    - unless: brew list z

utils-install-ripgrep:
  cmd.run:
    - names:
      - brew install ripgrep
    - unless: brew list ripgrep

utils-install-gpg:
  cmd.run:
    - names:
      - brew install gpg
    - unless: brew list gpg

utils-install-fd:
  cmd.run:
    - names:
      - brew install fd
    - unless: brew list fd
