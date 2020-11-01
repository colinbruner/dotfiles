
slate-link-config:
  file.symlink:
    - name: {{ grains.homedir }}/.slate
    - target: {{ grains.statesdir}}/slate/files/slate
    - makedirs: true
    - force: true
