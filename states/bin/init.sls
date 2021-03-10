
bin-link-scripts:
  file.symlink:
    - name: {{ grains.homedir }}/.bin
    - target: {{ grains.statesdir}}/bin/files/scripts
    - force: true
