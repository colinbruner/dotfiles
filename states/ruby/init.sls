
ruby-install-rbenv:
  cmd.run:
    - names:
      - brew install rbenv
    - unless: brew list rbenv
