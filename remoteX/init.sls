remote_install_req:
  pkg.installed:
    - pkgs:
      - xrdp
      - xfce4
      - gnome-terminal
  cmd.run:
    - name: echo xfce4-session >~/.xsession