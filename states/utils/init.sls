
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

utils-install-htop:
  cmd.run:
    - names:
      - brew install htop
    - unless: brew list htop

utils-install-coreutils:
  cmd.run:
    - names:
      - brew install coreutils
    - unless: brew list coreutils

utils-install-git-crypt:
  cmd.run:
    - names:
      - brew install git-crypt
    - unless: brew list git-crypt
