prospect_install_req:
  pkg.installed:
    - pkgs:
      - python3
      - gdb
      - python3-pip
      - git
      - python-gevent
      - python-mechanize
  user.present:
    - name: test
    - shell: /bin/bash
    - home: /home/test
    - groups:
      - sudo
  ssh_known_hosts.present:
    - name: github.com
    - user: test
    - fingerprint: 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48
    - require:
      - user: test
  git.latest:
    - name: git@github.com:m0t/prospector.git
    - target: /home/test/prospector
    - user: test
    - force: True
    - rev: master
    - force_checkout: True
    - submodules: True
    - always_fetch: True
    - require:
      - pkg: prospect_install_req