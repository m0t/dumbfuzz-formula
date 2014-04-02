remote_install_req:
  cmd.run:
    - name: apt-get -y install --no-install-recommends ubuntu-desktop
  pkg.installed:
    - pkgs:
      - vnc4server
      - gnome-terminal