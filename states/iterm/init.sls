

{% for file in salt['cp.list_master'](prefix='iterm/files') %}
iterm-link-{{ file.split('/')[-1] }}:
  file.symlink:
    - name: {{ grains.homedir }}/.config/iterm/{{ file.split('/')[-1] }}
    - target: {{ grains.statesdir }}/{{ file }}
    - makedirs: true
    - force: true
{% endfor %}
