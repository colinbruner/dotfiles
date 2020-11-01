

ssh-file-link-config:
  file.symlink:
    - name: {{ grains.homedir }}/.ssh/config
    - target: {{ grains.statesdir}}/ssh/files/config
    - makedirs: true
    - force: true

ssh-file-link-authorized_keys:
  file.symlink:
    - name: {{ grains.homedir }}/.ssh/authorized_keys
    - target: {{ grains.statesdir}}/ssh/files/authorized_keys
    - makedirs: true
    - force: true

