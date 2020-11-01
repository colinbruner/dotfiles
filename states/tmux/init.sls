
tmux-install:
  cmd.run:
    - names:
      - brew install tmux
    - unless: brew list tmux

tmux-link-tmux.conf:
  file.symlink:
    - name: {{ grains.configdir }}/tmux/tmux.conf
    - target: {{ grains.statesdir}}/tmux/files/tmux.conf
    - makedirs: true
    - force: true

tmux-link-tmux-mac.conf:
  file.symlink:
    - name: {{ grains.configdir }}/tmux/tmux-mac.conf
    - target: {{ grains.statesdir}}/tmux/files/tmux-mac.conf
    - makedirs: true
    - force: true

