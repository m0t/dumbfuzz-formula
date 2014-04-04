remote_install_req:
  pkg.installed:
    - pkgs:
      - xrdp
      - xfce4
      - gnome-terminal
      - cifs-utils
  cmd.run:
    - name: echo xfce4-session >~/.xsession
    
/home/test/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml:
  file.replace:
    - pattern: <property name="&lt;Super&gt;Tab" type="string" value="switch_window_key"/>
    - repl: <property name="&lt;Super&gt;Tab"  type="empty"/>
    - require:
      - pkg: remote_install_req