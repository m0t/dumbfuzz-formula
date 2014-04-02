dumbfuzz_install_req:
  pkg.installed:
    - pkgs:
      - python3
      - gdb
      - python3-pip
  user.present:
    - name: test
    - shell: /bin/bash
    - home: /home/test
    - system: True
  ssh_known_hosts.present:
    - name: github.com
    - user: test
    - fingerprint: 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48
    - require:
      - user: test
  git.latest:
    - name: git@github.com:m0t/dumbfuzz-c.git
    - target: /home/test/dumbfuzz
    - user: test
    - force: True
    - force_checkout: True
    - submodules: True
    - always_fetch: True
    - require: