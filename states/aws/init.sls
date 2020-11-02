

aws-install-awscli:
  cmd.run:
    - names:
      - brew install awscli
    - unless: brew list awscli

