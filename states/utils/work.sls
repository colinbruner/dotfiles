utils-work-install-redis:
  cmd.run:
    - names:
      - brew install redis
    - unless: brew list redis

utils-work-install-elasticsearch:
  cmd.run:
    - names:
      - brew install elasticsearch
    - unless: brew list elasticsearch

utils-work-install-postgresql:
  cmd.run:
    - names:
      - brew install postgresql
    - unless: brew list postgresql

utils-work-install-imagemagick:
  cmd.run:
    - names:
      - brew install imagemagick
    - unless: brew list imagemagick

utils-work-install-cmake:
  cmd.run:
    - names:
      - brew install cmake
    - unless: brew list cmake
