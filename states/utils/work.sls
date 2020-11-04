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
