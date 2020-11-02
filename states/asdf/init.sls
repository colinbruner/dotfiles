
asdf-install:
  cmd.run:
    - names:
      - git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
    - unless: test -d ~/.asdf

asdf-poetry:
  cmd.run:
    - names:
      - asdf plugin-add poetry
      - asdf install poetry $(asdf latest poetry)
      - asdf global poetry $(asdf latest poetry)
    - unless:
      - asdf which poetry
    - require:
      - cmd: asdf-install

asdf-ruby:
  cmd.run:
    - names:
      - asdf plugin-add ruby
      - asdf install ruby $(asdf latest ruby)
      - asdf global ruby $(asdf latest ruby)
    - unless:
      - asdf which ruby
    - require:
      - cmd: asdf-install

asdf-terraform:
  cmd.run:
    - names:
      - asdf plugin-add terraform
      - asdf install terraform $(asdf latest terraform)
      - asdf global terraform $(asdf latest terraform)
    - unless:
      - asdf which terraform
    - require:
      - cmd: asdf-install
