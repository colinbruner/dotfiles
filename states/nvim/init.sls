nvim-install:
  cmd.run:
    - names:
      - brew install nvim
    - unless: brew list nvim

nvim-link:
  file.symlink:
    - name: {{ grains.configdir }}/nvim
    - target: {{ grains.statesdir}}/nvim/files
    - force: true
